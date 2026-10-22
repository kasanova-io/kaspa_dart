import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../grpc/rpc.pb.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
class ApiAddressBalance with _$ApiAddressBalance {
  const factory ApiAddressBalance({
    required String address,
    @_StrictHistoryInt() required int balance,
  }) = _ApiAddressBalance;

  factory ApiAddressBalance.fromJson(Map<String, dynamic> json) =>
      _$ApiAddressBalanceFromJson(json);
}

@freezed
class ApiUtxo with _$ApiUtxo {
  const factory ApiUtxo({
    required String address,
    required ApiOutpoint outpoint,
    required ApiUtxoEntry utxoEntry,
  }) = _ApiUtxo;

  factory ApiUtxo.fromJson(Map<String, dynamic> json) =>
      _$ApiUtxoFromJson(json);
}

@freezed
class ApiOutpoint with _$ApiOutpoint {
  const factory ApiOutpoint({
    required String transactionId,
    @_StrictHistoryInt() required int index,
  }) = _Outpoint;

  factory ApiOutpoint.fromJson(Map<String, dynamic> json) =>
      _$ApiOutpointFromJson(json);
}

@freezed
class ApiUtxoEntry with _$ApiUtxoEntry {
  const factory ApiUtxoEntry({
    required BigInt amount,
    required ApiScriptPublicKey scriptPublicKey,
    required BigInt blockDaaScore,
    @Default(false) bool isCoinbase,
  }) = _ApiUtxoEntry;

  factory ApiUtxoEntry.fromJson(Map<String, dynamic> json) =>
      _$ApiUtxoEntryFromJson(json);
}

@freezed
class ApiScriptPublicKey with _$ApiScriptPublicKey {
  const factory ApiScriptPublicKey({
    required String scriptPublicKey,
    @_StrictHistoryInt() @Default(0) int version,
  }) = _ApiScriptPublicKey;

  factory ApiScriptPublicKey.fromJson(Map<String, dynamic> json) =>
      _$ApiScriptPublicKeyFromJson(json);
}

@freezed
class ApiTxLink with _$ApiTxLink {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiTxLink({
    String? txReceived,
    String? txSpent,
  }) = _ApiTxLink;

  factory ApiTxLink.fromJson(Map<String, dynamic> json) =>
      _$ApiTxLinkFromJson(json);
}

@freezed
class ApiTxId with _$ApiTxId {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiTxId({
    required String transactionId,
    @_StrictHistoryInt() int? blockTime,
  }) = _ApiTxId;

  factory ApiTxId.fromJson(Map<String, dynamic> json) =>
      _$ApiTxIdFromJson(json);
}

@freezed
class ApiTxInput with _$ApiTxInput {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiTxInput({
    required String transactionId,
    @_StrictHistoryInt() required int index,
    required String previousOutpointHash,
    required BigInt previousOutpointIndex,
    required String signatureScript,
    // V1 replaces the legacy signature count with an explicit compute budget.
    // Preserve absent fields; this history DTO is not a signing transaction.
    @JsonKey(fromJson: _historySigOpCountFromJson) required BigInt? sigOpCount,
    @JsonKey(fromJson: _historyUint16FromJson) int? computeBudget,
    // new fields
    String? previousOutpointAddress,
    @_StrictHistoryInt() int? previousOutpointAmount,
  }) = _ApiTxInput;

  factory ApiTxInput.fromJson(Map<String, dynamic> json) =>
      _$ApiTxInputFromJson(json);
}

@freezed
class ApiTxOutput with _$ApiTxOutput {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiTxOutput({
    required String transactionId,
    @_StrictHistoryInt() required int index,
    @_StrictHistoryInt() required int amount,
    required String scriptPublicKey,
    required String scriptPublicKeyAddress,
    required String scriptPublicKeyType,
  }) = _ApiTxOutput;

  factory ApiTxOutput.fromJson(Map<String, dynamic> json) =>
      _$ApiTxOutputFromJson(json);
}

@freezed
class ApiTransaction with _$ApiTransaction {
  ApiTransaction._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ApiTransaction({
    String? subnetworkId,
    @JsonKey(fromJson: _historyUint16FromJson) int? version,
    required String transactionId,
    @Default(const []) List<String> blockHash,
    @_StrictHistoryInt() required int blockTime,
    required bool isAccepted,
    String? acceptingBlockHash,
    @_StrictHistoryInt() int? acceptingBlockBlueScore,
    @Default(const []) List<ApiTxInput> inputs,
    @Default(const []) List<ApiTxOutput> outputs,
  }) = _Transaction;

  factory ApiTransaction.fromJson(Map<String, dynamic> json) =>
      _$ApiTransactionFromJson(json);

  factory ApiTransaction.fromRpc(RpcTransaction tx) {
    return ApiTransaction(
      transactionId: tx.verboseData.transactionId,
      version: tx.version.toInt(),
      blockTime: tx.verboseData.blockTime.toInt(),
      isAccepted: false,
      inputs: tx.inputs.mapIndexed((index, e) {
        return ApiTxInput(
          transactionId: tx.verboseData.transactionId,
          index: index,
          previousOutpointHash: e.previousOutpoint.transactionId,
          previousOutpointIndex: BigInt.from(e.previousOutpoint.index),
          signatureScript: e.signatureScript,
          sigOpCount: BigInt.from(e.sigOpCount),
        );
      }).toList(),
      outputs: tx.outputs.mapIndexed((index, e) {
        return ApiTxOutput(
          transactionId: tx.verboseData.transactionId,
          index: index,
          amount: e.amount.toInt(),
          scriptPublicKey: e.scriptPublicKey.scriptPublicKey,
          scriptPublicKeyAddress: e.verboseData.scriptPublicKeyAddress,
          scriptPublicKeyType: e.verboseData.scriptPublicKeyType,
        );
      }).toList(),
    );
  }
}

// History metadata retains absent v1/legacy fields without inventing values.
BigInt? _historySigOpCountFromJson(Object? value) {
  if (value == null) return null;
  if (value is! String) {
    throw const FormatException(
        'History signature count must be a decimal string');
  }
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    throw const FormatException(
        'History signature count must be decimal digits');
  }
  final count = BigInt.tryParse(value);
  if (count == null || count.isNegative || count > BigInt.from(255)) {
    throw const FormatException('History signature count is outside uint8');
  }
  return count;
}

int? _historyUint16FromJson(Object? value) {
  if (value == null) return null;
  if (value is! int || value < 0 || value > 65535) {
    throw const FormatException('History metadata must be an integer uint16');
  }
  return value;
}

// Keep the existing strict integer contract across serializer versions.
class _StrictHistoryInt implements JsonConverter<int, Object> {
  const _StrictHistoryInt();
  @override
  int fromJson(Object value) => value as int;
  @override
  Object toJson(int value) => value;
}
