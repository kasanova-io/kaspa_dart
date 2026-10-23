// ABOUTME: Regression for the real TN10 mixed history page captured 2026-10-22.
// ABOUTME: V1 replaces sig_op_count with compute_budget; no row may be discarded.
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kaspa_dart/kaspa/kaspa_api/types.dart';
import 'package:kaspa_dart/kaspa/grpc/rpc.pb.dart';

void main() {
  final raw = (jsonDecode(
    File('test/fixtures/rest_history_v1.json').readAsStringSync(),
  ) as List)
      .cast<Map<String, dynamic>>();

  test('real mixed v0/v1 history keeps all 50 transactions and metadata', () {
    final decoded = raw.map(ApiTransaction.fromJson).toList();
    expect(decoded, hasLength(50));
    expect(decoded.where((tx) => tx.version == 0), hasLength(15));
    expect(decoded.where((tx) => tx.version == 1), hasLength(35));
    for (var i = 0; i < raw.length; i++) {
      final original = raw[i];
      final tx = decoded[i];
      expect(tx.transactionId, original['transaction_id']);
      expect(tx.version, original['version']);
      expect(tx.payload, original['payload']);
      expect(ApiTransaction.fromJson(tx.toJson()), tx);
      expect(tx.inputs, hasLength((original['inputs'] as List).length));
      expect(tx.outputs, hasLength((original['outputs'] as List).length));
      for (var j = 0; j < tx.inputs.length; j++) {
        final input = tx.inputs[j];
        final json = (original['inputs'] as List)[j] as Map;
        expect(
            input.sigOpCount,
            json['sig_op_count'] == null
                ? null
                : BigInt.parse(json['sig_op_count'] as String));
        expect(input.computeBudget, json['compute_budget']);
      }
      expect(
          ApiTransaction.fromJson(
            jsonDecode(jsonEncode(tx.toJson())) as Map<String, dynamic>,
          ),
          tx);
    }
  });

  test('history payload preserves absent, null, empty and exact wire bytes',
      () {
    for (final payload in <String?>[null, '', '4b4f423104', '4B4F423104']) {
      final json = {...raw.first, 'payload': payload};
      final tx = ApiTransaction.fromJson(json);
      expect(tx.payload, payload);
      expect(ApiTransaction.fromJson(tx.toJson()).payload, payload);
      expect(tx.copyWith().payload, payload);
    }
    final absent = Map<String, dynamic>.from(raw.first)..remove('payload');
    expect(ApiTransaction.fromJson(absent).payload, isNull);
  });

  test('RPC history preserves payload presence rather than protobuf defaults',
      () {
    expect(ApiTransaction.fromRpc(RpcTransaction(version: 1)).payload, isNull);
    for (final payload in ['', '4b4f423104']) {
      expect(
          ApiTransaction.fromRpc(RpcTransaction(version: 1, payload: payload))
              .payload,
          payload);
    }
  });

  test('absent version stays unknown and legacy constructors remain usable',
      () {
    final json = Map<String, dynamic>.from(raw.first)..remove('version');
    expect(ApiTransaction.fromJson(json).version, isNull);
    final input = ApiTxInput(
      transactionId: 'a',
      index: 0,
      previousOutpointHash: 'b',
      previousOutpointIndex: BigInt.zero,
      signatureScript: '',
      sigOpCount: BigInt.one,
    );
    expect(input.computeBudget, isNull);
    expect(input.sigOpCount, BigInt.one);
  });

  test('null and zero are distinct; exact uint16 budget boundaries round trip',
      () {
    final base =
        Map<String, dynamic>.from((raw.first['inputs'] as List).first as Map);
    for (final budget in [null, 0, 65535]) {
      final input = ApiTxInput.fromJson(
          {...base, 'sig_op_count': null, 'compute_budget': budget});
      expect(input.sigOpCount, isNull);
      expect(input.computeBudget, budget);
      expect(ApiTxInput.fromJson(input.toJson()), input);
    }
    final legacyZero = ApiTxInput.fromJson(
        {...base, 'sig_op_count': '0', 'compute_budget': null});
    expect(legacyZero.sigOpCount, BigInt.zero);
    expect(legacyZero.computeBudget, isNull);
    expect(ApiTxInput.fromJson(legacyZero.toJson()), legacyZero);
  });

  test('existing UTXO direct-map round trip keeps nested JSON maps', () {
    final utxo = ApiUtxo(
      address: 'kaspatest:recorded',
      outpoint: const ApiOutpoint(transactionId: 'a', index: 0),
      utxoEntry: ApiUtxoEntry(
        amount: BigInt.from(100),
        scriptPublicKey: const ApiScriptPublicKey(scriptPublicKey: '20aa'),
        blockDaaScore: BigInt.from(2),
      ),
    );
    expect(utxo.toJson()['outpoint'], isA<Map>());
    expect(utxo.toJson()['utxoEntry'], isA<Map>());
    expect(ApiUtxo.fromJson(utxo.toJson()), utxo);
  });

  test('existing integer fields reject fractional balances amounts and indices',
      () {
    final tx = Map<String, dynamic>.from(raw.first);
    final input =
        Map<String, dynamic>.from((tx['inputs'] as List).first as Map);
    final output =
        Map<String, dynamic>.from((tx['outputs'] as List).first as Map);
    expect(() => ApiTransaction.fromJson({...tx, 'block_time': 1.5}),
        throwsA(isA<TypeError>()));
    expect(() => ApiTxInput.fromJson({...input, 'index': 0.5}),
        throwsA(isA<TypeError>()));
    expect(() => ApiTxOutput.fromJson({...output, 'index': 0.5}),
        throwsA(isA<TypeError>()));
    expect(() => ApiTxOutput.fromJson({...output, 'amount': 1.5}),
        throwsA(isA<TypeError>()));
    expect(() => ApiAddressBalance.fromJson({'address': 'a', 'balance': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () => ApiScriptPublicKey.fromJson(
            {'scriptPublicKey': '20aa', 'version': 0.5}),
        throwsA(isA<TypeError>()));
  });

  test('optional legacy integers preserve absent and null without coercion',
      () {
    final tx = Map<String, dynamic>.from(raw.first);
    final input =
        Map<String, dynamic>.from((tx['inputs'] as List).first as Map);
    for (final absent in [false, true]) {
      final id = <String, dynamic>{'transaction_id': 'a', 'block_time': null};
      final previous = {...input, 'previous_outpoint_amount': null};
      final transaction = {...tx, 'accepting_block_blue_score': null};
      if (absent) {
        id.remove('block_time');
        previous.remove('previous_outpoint_amount');
        transaction.remove('accepting_block_blue_score');
      }
      expect(ApiTxId.fromJson(id).blockTime, isNull);
      expect(ApiTxInput.fromJson(previous).previousOutpointAmount, isNull);
      expect(
          ApiTransaction.fromJson(transaction).acceptingBlockBlueScore, isNull);
    }
    expect(() => ApiTxId.fromJson({'transaction_id': 'a', 'block_time': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () => ApiTxInput.fromJson({...input, 'previous_outpoint_amount': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () =>
            ApiTransaction.fromJson({...tx, 'accepting_block_blue_score': 1.5}),
        throwsA(isA<TypeError>()));
  });

  test('malformed present metadata fails instead of inventing zero', () {
    final base =
        Map<String, dynamic>.from((raw.first['inputs'] as List).first as Map);
    for (final budget in [-1, 65536, 1.5, '20', true]) {
      expect(() => ApiTxInput.fromJson({...base, 'compute_budget': budget}),
          throwsFormatException);
    }
    for (final count in [
      '-1',
      '256',
      'invalid',
      '0xff',
      '+1',
      ' 1',
      1,
      false
    ]) {
      expect(() => ApiTxInput.fromJson({...base, 'sig_op_count': count}),
          throwsFormatException);
    }
    for (final version in [-1, 65536, 1.5, '1', true]) {
      expect(() => ApiTransaction.fromJson({...raw.first, 'version': version}),
          throwsFormatException);
    }
  });
}
