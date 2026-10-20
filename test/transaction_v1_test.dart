import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaspa_dart/kaspa/transaction/transaction_v1.dart';
import 'fixtures/v1_signing_fixture.dart';

TransactionV1 readCase(Map value) {
  final tx = value['transaction'];
  final utxos = value['utxos'] as List;
  return TransactionV1(
    inputs: [
      for (var i = 0; i < (tx['inputs'] as List).length; i++)
        TransactionInputV1(
          transactionId: hex.decode(tx['inputs'][i]['transactionId']),
          outputIndex: tx['inputs'][i]['index'],
          sequence: BigInt.parse(tx['inputs'][i]['sequence']),
          computeBudget: tx['inputs'][i]['computeBudget'],
          signatureScript: hex.decode(tx['inputs'][i]['signatureScript']),
          spentOutput: SpentOutputV1(
              amount: BigInt.parse(utxos[i]['amount']),
              scriptVersion: utxos[i]['scriptVersion'],
              script: hex.decode(utxos[i]['script']),
              covenantId: utxos[i]['covenantId'] == null
                  ? null
                  : hex.decode(utxos[i]['covenantId'])),
        ),
    ],
    outputs: [
      for (final o in tx['outputs'])
        TransactionOutputV1(
          value: BigInt.parse(o['value']),
          scriptVersion: o['scriptVersion'],
          script: hex.decode(o['script']),
          covenant: o['covenant'] == null
              ? null
              : CovenantBindingV1(
                  authorizingInput: o['covenant']['authorizingInput'],
                  covenantId: hex.decode(o['covenant']['covenantId'])),
        )
    ],
    lockTime: BigInt.parse(tx['lockTime']),
    subnetworkId: hex.decode(tx['subnetworkId']),
    gas: BigInt.parse(tx['gas']),
    payload: hex.decode(tx['payload']),
  );
}

void main() {
  final cases = (jsonDecode(v1SigningFixture) as Map)['cases'] as List;
  for (final c in cases) {
    test('node v1 signature vectors: ${c['name']}', () {
      final tx = readCase(c);
      for (final input in c['expected']) {
        for (final expected in input['hashes']) {
          final index = input['inputIndex'] as int,
              mode = expected['hashType'] as int;
          expect(hex.encode(tx.signatureHashSchnorr(index, hashType: mode)),
              expected['schnorr']);
          expect(hex.encode(tx.signatureHashEcdsa(index, hashType: mode)),
              expected['ecdsa']);
        }
      }
    });
  }

  test('reviewed signing data owns its bytes and rejects direct mutation', () {
    final tx = readCase(cases.first);
    final before = hex.encode(tx.signatureHashSchnorr(0));
    for (final bytes in [
      tx.subnetworkId,
      tx.inputs.first.transactionId,
      tx.inputs.first.spentOutput.script,
      tx.inputs.first.spentOutput.covenantId!,
      tx.outputs.first.script,
      tx.outputs.first.covenant!.covenantId
    ]) {
      expect(() => bytes[0] ^= 1, throwsUnsupportedError);
    }
    expect(() => tx.inputs.clear(), throwsUnsupportedError);
    expect(() => tx.outputs.clear(), throwsUnsupportedError);
    final script = [1, 2, 3];
    final owned = TransactionOutputV1(
        value: BigInt.one, scriptVersion: 0, script: script);
    script[0] = 9;
    expect(owned.script, [1, 2, 3]);
    expect(hex.encode(tx.signatureHashSchnorr(0)), before);
  });

  test('invalid hash modes and input indices cannot silently authorize', () {
    final tx = readCase(cases.first);
    for (final mode in [0, 3, 5, 128, 255, 257, -1]) {
      expect(() => tx.signatureHashSchnorr(0, hashType: mode),
          throwsFormatException);
    }
    for (final index in [-1, tx.inputs.length]) {
      expect(() => tx.signatureHashSchnorr(index), throwsRangeError);
    }
  });

  test('out-of-range amounts and missing authorizing inputs are rejected', () {
    final base = readCase(cases.first);
    for (final amount in [BigInt.from(-1), BigInt.one << 64]) {
      expect(
          () =>
              TransactionOutputV1(value: amount, scriptVersion: 0, script: []),
          throwsFormatException);
    }
    expect(
        () => TransactionV1(
            inputs: base.inputs,
            outputs: [
              TransactionOutputV1(
                  value: BigInt.one,
                  scriptVersion: 0,
                  script: [],
                  covenant: CovenantBindingV1(
                      authorizingInput: 2, covenantId: List.filled(32, 0)))
            ],
            lockTime: BigInt.zero,
            subnetworkId: List.filled(20, 0),
            gas: BigInt.zero,
            payload: []),
        throwsFormatException);
  });
}
