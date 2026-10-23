import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fixnum/fixnum.dart';
import 'package:kaspa_dart/kaspa/grpc/rpc.pb.dart';
import 'package:kaspa_dart/kaspa/kaspa_api/types.dart';

void main() {
  test('confirmed covenant purchase decodes through the REST history model',
      () {
    final wire =
        jsonDecode(File('test/fixtures/rest_v1_buy.json').readAsStringSync())
            as Map<String, dynamic>;
    final transaction = ApiTransaction.fromJson(wire);
    expect(transaction.transactionId,
        'fed7307a6316d4fe75c8b2ec5c5d7ac76aaa09665c40f13410a4884ec8733813');
    expect(transaction.isAccepted, isTrue);
    expect(transaction.version, 1);
    expect(transaction.inputs, hasLength(3));
    expect(transaction.outputs.map((output) => output.amount),
        [255998994, 12093995, 1207994045472]);
    expect(transaction.inputs.map((input) => input.sigOpCount),
        everyElement(isNull));
    expect(
        transaction.inputs.map((input) => input.computeBudget), [97, 110, 11]);
    final restored = ApiTransaction.fromJson(
        jsonDecode(jsonEncode(transaction.toJson())) as Map<String, dynamic>);
    expect(restored, transaction);
    expect(ApiTransaction.fromJson(transaction.toJson()), transaction);
    expect(transaction.toJson()['inputs'], hasLength(3));
  });

  Map<String, dynamic> input({Object? sigOpCount, Object? computeBudget}) => {
        'transaction_id': 'legacy-history',
        'index': 0,
        'previous_outpoint_hash': 'funding',
        'previous_outpoint_index': '2',
        'signature_script': '01',
        'sig_op_count': sigOpCount,
        'compute_budget': computeBudget,
      };

  test('legacy signature-operation count is unchanged and round-trips', () {
    for (final value in ['0', '1', '255']) {
      final decoded = ApiTxInput.fromJson(input(sigOpCount: value));
      expect(decoded.sigOpCount, BigInt.parse(value));
      expect(decoded.computeBudget, isNull);
      expect(decoded.toJson()['sig_op_count'], value);
      expect(decoded.toJson().containsKey('compute_budget'), isFalse);
      expect(ApiTxInput.fromJson(decoded.toJson()), decoded);
    }
  });

  test('unknown resources remain unknown and never become zero', () {
    final decoded = ApiTxInput.fromJson(input());
    expect(decoded.sigOpCount, isNull);
    expect(decoded.computeBudget, isNull);
    expect(decoded.toJson().containsKey('sig_op_count'), isFalse);
    expect(decoded.toJson().containsKey('compute_budget'), isFalse);
  });

  test('explicit zero compute budget remains distinct from absent data', () {
    final decoded = ApiTxInput.fromJson(input(computeBudget: 0));
    expect(decoded.computeBudget, 0);
    expect(decoded.sigOpCount, isNull);
    expect(decoded.toJson()['compute_budget'], 0);
  });

  test('malformed legacy resource data still fails rather than defaulting', () {
    expect(() => ApiTxInput.fromJson(input(sigOpCount: 'invalid')),
        throwsFormatException);
    expect(() => ApiTxInput.fromJson(input(computeBudget: 'invalid')),
        throwsFormatException);
  });

  test('missing transaction version stays unknown', () {
    final decoded = ApiTransaction.fromJson({
      'transaction_id': 'legacy-history',
      'block_time': 1,
      'is_accepted': true,
    });
    expect(decoded.version, isNull);
    expect(decoded.toJson().containsKey('version'), isFalse);
  });

  test('nested UTXO serialization retains JSON maps and direct roundtrip', () {
    final decoded = ApiUtxo.fromJson({
      'address': 'kaspa:fixture',
      'outpoint': {'transactionId': 'funding', 'index': 2},
      'utxoEntry': {
        'amount': '123',
        'blockDaaScore': '456',
        'scriptPublicKey': {'scriptPublicKey': '00', 'version': 0},
      },
    });
    final encoded = decoded.toJson();
    expect(encoded['outpoint'], isA<Map<String, dynamic>>());
    expect(encoded['utxoEntry'], isA<Map<String, dynamic>>());
    expect((encoded['utxoEntry'] as Map)['scriptPublicKey'],
        isA<Map<String, dynamic>>());
    expect(ApiUtxo.fromJson(encoded), decoded);
  });

  test('REST integer fields reject fractional numbers without truncation', () {
    final wire =
        jsonDecode(File('test/fixtures/rest_v1_buy.json').readAsStringSync())
            as Map<String, dynamic>;
    for (final field in ['index', 'previous_outpoint_amount']) {
      expect(() => ApiTxInput.fromJson({...wire['inputs'][0], field: 1.5}),
          throwsA(isA<TypeError>()),
          reason: field);
    }
    for (final field in ['index', 'amount']) {
      expect(() => ApiTxOutput.fromJson({...wire['outputs'][0], field: 1.5}),
          throwsA(isA<TypeError>()),
          reason: field);
    }
    for (final field in ['block_time', 'accepting_block_blue_score']) {
      expect(() => ApiTransaction.fromJson({...wire, field: 1.5}),
          throwsA(isA<TypeError>()),
          reason: field);
    }
    // Newly introduced resource metadata uses the upstream bounded parser;
    // legacy integer fields above retain their original strict TypeError.
    expect(
        () =>
            ApiTxInput.fromJson({...wire['inputs'][0], 'compute_budget': 1.5}),
        throwsFormatException);
    expect(() => ApiTransaction.fromJson({...wire, 'version': 1.5}),
        throwsFormatException);
    expect(
        () =>
            ApiAddressBalance.fromJson({'address': 'fixture', 'balance': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () => ApiOutpoint.fromJson({'transactionId': 'fixture', 'index': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () => ApiScriptPublicKey.fromJson(
            {'scriptPublicKey': '00', 'version': 1.5}),
        throwsA(isA<TypeError>()));
    expect(
        () =>
            ApiTxId.fromJson({'transaction_id': 'fixture', 'block_time': 1.5}),
        throwsA(isA<TypeError>()));
  });

  test('RPC history preserves legacy counts and marks v1 legacy count absent',
      () {
    for (final version in [0, 1]) {
      final decoded = ApiTransaction.fromRpc(RpcTransaction(
        version: version,
        verboseData: RpcTransactionVerboseData(
            transactionId: 'rpc-fixture', blockTime: Int64(1)),
        inputs: [
          RpcTransactionInput(
              previousOutpoint: RpcOutpoint(transactionId: 'funding', index: 0),
              signatureScript: '01',
              sigOpCount: 1)
        ],
      ));
      expect(decoded.version, version);
      expect(
          decoded.inputs.single.sigOpCount, version == 0 ? BigInt.one : isNull);
      // The existing protobuf schema carries no compute-budget field.
      expect(decoded.inputs.single.computeBudget, isNull);
    }
  });
}
