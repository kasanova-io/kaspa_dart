// Immutable version-1 signing data. Callers must independently verify live
// inputs, contract semantics, fees and user authorization before signing.
import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:pointycastle/digests/blake2b.dart';

final class CovenantBindingV1 {
  final int authorizingInput;
  final Uint8List covenantId;

  CovenantBindingV1(
      {required this.authorizingInput, required List<int> covenantId})
      : covenantId = _bytes(covenantId, length: 32) {
    _unsigned(BigInt.from(authorizingInput), 16);
  }
}

final class SpentOutputV1 {
  final BigInt amount;
  final int scriptVersion;
  final Uint8List script;
  final Uint8List? covenantId;

  SpentOutputV1(
      {required this.amount,
      required this.scriptVersion,
      required List<int> script,
      List<int>? covenantId})
      : script = _bytes(script),
        covenantId =
            covenantId == null ? null : _bytes(covenantId, length: 32) {
    _unsigned(amount, 64);
    _unsigned(BigInt.from(scriptVersion), 16);
  }
}

final class TransactionInputV1 {
  final Uint8List transactionId;
  final int outputIndex;
  final BigInt sequence;
  final int computeBudget;
  final Uint8List signatureScript;
  final SpentOutputV1 spentOutput;

  TransactionInputV1(
      {required List<int> transactionId,
      required this.outputIndex,
      required this.sequence,
      required this.computeBudget,
      required this.spentOutput,
      List<int> signatureScript = const []})
      : transactionId = _bytes(transactionId, length: 32),
        signatureScript = _bytes(signatureScript) {
    _unsigned(BigInt.from(outputIndex), 32);
    _unsigned(sequence, 64);
    _unsigned(BigInt.from(computeBudget), 16);
  }
}

final class TransactionOutputV1 {
  final BigInt value;
  final int scriptVersion;
  final Uint8List script;
  final CovenantBindingV1? covenant;

  TransactionOutputV1(
      {required this.value,
      required this.scriptVersion,
      required List<int> script,
      this.covenant})
      : script = _bytes(script) {
    _unsigned(value, 64);
    _unsigned(BigInt.from(scriptVersion), 16);
  }
}

/// Separate from legacy transaction serialization: v1 omits sig-op-count
/// commitments and commits every output's covenant-presence bit and binding.
/// Budgets and signature scripts are not signature-hash fields under consensus;
/// a wallet's immutable reviewed plan must still fix them before authorization.
final class TransactionV1 {
  final List<TransactionInputV1> inputs;
  final List<TransactionOutputV1> outputs;
  final BigInt lockTime;
  final Uint8List subnetworkId;
  final BigInt gas;
  final Uint8List payload;

  TransactionV1(
      {required List<TransactionInputV1> inputs,
      required List<TransactionOutputV1> outputs,
      required this.lockTime,
      required List<int> subnetworkId,
      required this.gas,
      required List<int> payload})
      : inputs = List.unmodifiable(inputs),
        outputs = List.unmodifiable(outputs),
        subnetworkId = _bytes(subnetworkId, length: 20),
        payload = _bytes(payload) {
    _unsigned(lockTime, 64);
    _unsigned(gas, 64);
    for (final output in this.outputs) {
      final binding = output.covenant;
      if (binding != null && binding.authorizingInput >= this.inputs.length) {
        throw const FormatException('Covenant authorizing input is absent');
      }
    }
  }

  int get version => 1;

  /// Supports the six consensus hash modes. Permission to use any mode is the
  /// wallet's responsibility; this function alone does not authorize a spend.
  Uint8List signatureHashSchnorr(int inputIndex, {int hashType = 1}) {
    if (![1, 2, 4, 129, 130, 132].contains(hashType)) {
      throw const FormatException('Invalid signature hash mode');
    }
    RangeError.checkValidIndex(inputIndex, inputs, 'inputIndex');
    final mode = hashType & 7;
    final anyoneCanPay = hashType & 128 != 0;
    final zero = Uint8List(32);
    final selected = inputs[inputIndex];
    final previousOutputs = _Writer();
    final sequences = _Writer();
    for (final input in inputs) {
      previousOutputs.outpoint(input);
      sequences.uint(input.sequence, 8);
    }
    final outputBytes = _Writer();
    if (mode == 1) {
      for (final output in outputs) {
        outputBytes.output(output);
      }
    } else if (mode == 4 && inputIndex < outputs.length) {
      outputBytes.output(outputs[inputIndex]);
    }
    final hashOutputs = mode == 2 || (mode == 4 && inputIndex >= outputs.length)
        ? zero
        : _signingHash(outputBytes.takeBytes());
    final body = _Writer()
      ..uint(BigInt.one, 2)
      ..add(anyoneCanPay ? zero : _signingHash(previousOutputs.takeBytes()))
      ..add(anyoneCanPay || mode != 1
          ? zero
          : _signingHash(sequences.takeBytes()))
      ..outpoint(selected)
      ..script(selected.spentOutput.scriptVersion, selected.spentOutput.script)
      ..uint(selected.spentOutput.amount, 8)
      ..uint(selected.sequence, 8)
      ..add(hashOutputs)
      ..uint(lockTime, 8)
      ..add(subnetworkId)
      ..uint(gas, 8);
    if (subnetworkId.every((byte) => byte == 0) && payload.isEmpty) {
      body.add(zero);
    } else {
      final encodedPayload = _Writer()..variableBytes(payload);
      body.add(_signingHash(encodedPayload.takeBytes()));
    }
    body.uint(BigInt.from(hashType), 1);
    return _signingHash(body.takeBytes());
  }

  Uint8List signatureHashEcdsa(int inputIndex, {int hashType = 1}) =>
      Uint8List.fromList(sha256.convert([
        ...sha256.convert(utf8.encode('TransactionSigningHashECDSA')).bytes,
        ...signatureHashSchnorr(inputIndex, hashType: hashType),
      ]).bytes);
}

Uint8List _signingHash(List<int> bytes) => Blake2bDigest(
        digestSize: 32,
        key: Uint8List.fromList(utf8.encode('TransactionSigningHash')))
    .process(Uint8List.fromList(bytes));

Uint8List _bytes(List<int> value, {int? length}) {
  if ((length != null && value.length != length) ||
      value.any((b) => b < 0 || b > 255)) {
    throw const FormatException('Invalid byte sequence');
  }
  return Uint8List.fromList(value).asUnmodifiableView();
}

void _unsigned(BigInt value, int bits) {
  if (value.isNegative || value >= BigInt.one << bits) {
    throw FormatException('Value exceeds unsigned $bits-bit range');
  }
}

final class _Writer {
  final _builder = BytesBuilder(copy: false);
  void add(List<int> value) => _builder.add(value);
  void addByte(int value) => _builder.addByte(value);
  Uint8List takeBytes() => _builder.takeBytes();
  void uint(BigInt value, int width) {
    _unsigned(value, width * 8);
    for (var i = 0; i < width; i++) {
      addByte(((value >> (i * 8)) & BigInt.from(255)).toInt());
    }
  }

  void variableBytes(List<int> bytes) {
    uint(BigInt.from(bytes.length), 8);
    add(bytes);
  }

  void outpoint(TransactionInputV1 input) {
    add(input.transactionId);
    uint(BigInt.from(input.outputIndex), 4);
  }

  void script(int version, List<int> bytes) {
    uint(BigInt.from(version), 2);
    variableBytes(bytes);
  }

  void output(TransactionOutputV1 output) {
    uint(output.value, 8);
    script(output.scriptVersion, output.script);
    addByte(output.covenant == null ? 0 : 1);
    if (output.covenant case final covenant?) {
      uint(BigInt.from(covenant.authorizingInput), 2);
      add(covenant.covenantId);
    }
  }
}
