// Offline public fixtures: legacy signing and derivation require no local secrets.
import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaspa_dart/kaspa/kaspa.dart';
import 'package:kaspa_dart/kaspa_dart.dart' as sdk;

import 'fixtures/v1_signing_fixture.dart';

void main() {
  test('legacy derivation retains identity through extended key import', () {
    const publicMnemonic =
        'abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about';
    final seed = sdk.mnemonicToSeedHex(publicMnemonic);
    final wallet =
        sdk.HdWallet.forSeedHex(seed, type: sdk.HdWalletType.schnorr);
    final pair = wallet.deriveKeyPair(typeIndex: 0, index: 0);
    final imported = ExPrivateKey.import(wallet.getExtendedPrivateKey(seed))
        .deriveKeyPair(index: 0);
    expect(imported.publicKey, pair.publicKey);
    expect(imported.privateKey, pair.privateKey);
    for (final prefix in [AddressPrefix.kaspa, AddressPrefix.kaspaTest]) {
      final address =
          Address.publicKey(prefix: prefix, publicKey: pair.publicKey);
      expect(Address.decodeAddress(address.encoded).encoded, address.encoded);
    }
  });

  test('legacy SIGHASH_ALL remains identical to node control vectors', () {
    final c = ((jsonDecode(v1SigningFixture) as Map)['cases'] as List)
        .singleWhere((c) => c['name'] == 'legacy-v0-control');
    final tx = c['transaction'], utxos = c['utxos'];
    Int64 u64(String value) =>
        Int64.parseHex(BigInt.parse(value).toRadixString(16));
    final address = Address.publicKey(
        prefix: AddressPrefix.kaspaTest,
        publicKey: Uint8List.fromList(hex.decode(
            '79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798')));
    final legacy = Transaction(
        version: 0,
        inputs: [
          for (var i = 0; i < (tx['inputs'] as List).length; i++)
            TxInput(
                address: address,
                previousOutpoint: Outpoint(
                    transactionId: tx['inputs'][i]['transactionId'],
                    index: tx['inputs'][i]['index']),
                signatureScript: Uint8List(0),
                sequence: u64(tx['inputs'][i]['sequence']),
                sigOpCount: tx['inputs'][i]['sigOpCount'],
                utxoEntry: UtxoEntry(
                    amount: BigInt.parse(utxos[i]['amount']),
                    scriptPublicKey: ScriptPublicKey(
                        version: utxos[i]['scriptVersion'],
                        scriptPublicKey:
                            Uint8List.fromList(hex.decode(utxos[i]['script']))),
                    blockDaaScore: BigInt.one,
                    isCoinbase: false))
        ],
        outputs: [
          for (final o in tx['outputs'])
            TxOutput(
                value: u64(o['value']),
                scriptPublicKey: ScriptPublicKey(
                    version: o['scriptVersion'],
                    scriptPublicKey:
                        Uint8List.fromList(hex.decode(o['script']))))
        ],
        lockTime: u64(tx['lockTime']),
        subnetworkId: Uint8List.fromList(hex.decode(tx['subnetworkId'])),
        gas: u64(tx['gas']),
        payload: Uint8List(0));
    final reused = SighashReusedValues();
    for (final expected in c['expected']) {
      final hash = sdk.calculateSignatureHashSchnorr(
          tx: legacy,
          inputIndex: expected['inputIndex'],
          hashType: SigHashType.sigHashAll,
          sighashReusedValues: reused);
      expect(
          hex.encode(hash),
          (expected['hashes'] as List)
              .singleWhere((h) => h['hashType'] == 1)['schnorr']);
      final key = Uint8List(32)..[31] = 1;
      final signature = sdk.signSchnorr(hash: hash, privateKey: key);
      expect(
          sdk.verifySchnorr(
              publicKey: hex.encode(address.scriptAddress()),
              hash: hex.encode(hash),
              signature: hex.encode(signature)),
          isTrue);
      final altered = Uint8List.fromList(hash)..[0] ^= 1;
      expect(
          sdk.verifySchnorr(
              publicKey: hex.encode(address.scriptAddress()),
              hash: hex.encode(altered),
              signature: hex.encode(signature)),
          isFalse);
    }
  });
}
