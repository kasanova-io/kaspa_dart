// Uses production codec and reference vectors from kaspanet/rusty-kaspa:
// crypto/addresses/src/lib.rs and crypto/txscript/src/standard.rs.
import 'dart:typed_data';
import '../lib/kaspa/bech32/bech32.dart';

void main() {
  final vectors = [
    (
      'kaspatest',
      0,
      List<int>.filled(32, 0),
      'kaspatest:qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqhqrxplya',
    ),
    (
      'kaspa',
      0,
      hexBytes(
        '7bc04196f1125e4f2676cd09ed14afb77223b1f62177da5488346323eaa91a69',
      ),
      'kaspa:qpauqsvk7yf9unexwmxsnmg547mhyga37csh0kj53q6xxgl24ydxjsgzthw5j',
    ),
    (
      'kaspatest',
      1,
      hexBytes(
        'ba01fc5f4e9d9879599c69a3dafdb835a7255e5f2e934e9322ecd3af190ab0f60e',
      ),
      'kaspatest:qxaqrlzlf6wes72en3568khahq66wf27tuhfxn5nytkd8tcep2c0vrse6gdmpks',
    ),
  ];
  for (final (prefix, version, payload, expected) in vectors) {
    final words = bytesToWords(Uint8List.fromList([version, ...payload]));
    final encoded = bech32.encode(Bech32(prefix, words));
    if (encoded != expected)
      throw StateError('Checksum vector mismatch: $encoded');
    final decoded = bech32.decode(expected);
    if (decoded.hrp != prefix || decoded.data.join(',') != words.join(',')) {
      throw StateError('Checksum decode mismatch');
    }
    var rejected = false;
    try {
      bech32.decode('${expected.substring(0, expected.length - 1)}q');
    } catch (_) {
      rejected = true;
    }
    if (!rejected) throw StateError('Corrupt checksum was accepted');
  }
  print('PASS: 3 reference addresses, decode, corrupt checksum rejection');
}

List<int> hexBytes(String hex) => [
  for (var i = 0; i < hex.length; i += 2)
    int.parse(hex.substring(i, i + 2), radix: 16),
];
