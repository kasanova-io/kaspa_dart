// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAddressBalanceImpl _$$ApiAddressBalanceImplFromJson(Map json) =>
    _$ApiAddressBalanceImpl(
      address: json['address'] as String,
      balance: const _StrictHistoryInt().fromJson(json['balance'] as Object),
    );

Map<String, dynamic> _$$ApiAddressBalanceImplToJson(
        _$ApiAddressBalanceImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': const _StrictHistoryInt().toJson(instance.balance),
    };

_$ApiUtxoImpl _$$ApiUtxoImplFromJson(Map json) => _$ApiUtxoImpl(
      address: json['address'] as String,
      outpoint: ApiOutpoint.fromJson(
          Map<String, dynamic>.from(json['outpoint'] as Map)),
      utxoEntry: ApiUtxoEntry.fromJson(
          Map<String, dynamic>.from(json['utxoEntry'] as Map)),
    );

Map<String, dynamic> _$$ApiUtxoImplToJson(_$ApiUtxoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
    };

_$OutpointImpl _$$OutpointImplFromJson(Map json) => _$OutpointImpl(
      transactionId: json['transactionId'] as String,
      index: const _StrictHistoryInt().fromJson(json['index'] as Object),
    );

Map<String, dynamic> _$$OutpointImplToJson(_$OutpointImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'index': const _StrictHistoryInt().toJson(instance.index),
    };

_$ApiUtxoEntryImpl _$$ApiUtxoEntryImplFromJson(Map json) => _$ApiUtxoEntryImpl(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ApiScriptPublicKey.fromJson(
          Map<String, dynamic>.from(json['scriptPublicKey'] as Map)),
      blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
      isCoinbase: json['isCoinbase'] as bool? ?? false,
    );

Map<String, dynamic> _$$ApiUtxoEntryImplToJson(_$ApiUtxoEntryImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_$ApiScriptPublicKeyImpl _$$ApiScriptPublicKeyImplFromJson(Map json) =>
    _$ApiScriptPublicKeyImpl(
      scriptPublicKey: json['scriptPublicKey'] as String,
      version: json['version'] == null
          ? 0
          : const _StrictHistoryInt().fromJson(json['version'] as Object),
    );

Map<String, dynamic> _$$ApiScriptPublicKeyImplToJson(
        _$ApiScriptPublicKeyImpl instance) =>
    <String, dynamic>{
      'scriptPublicKey': instance.scriptPublicKey,
      'version': const _StrictHistoryInt().toJson(instance.version),
    };

_$ApiTxLinkImpl _$$ApiTxLinkImplFromJson(Map json) => _$ApiTxLinkImpl(
      txReceived: json['tx_received'] as String?,
      txSpent: json['tx_spent'] as String?,
    );

Map<String, dynamic> _$$ApiTxLinkImplToJson(_$ApiTxLinkImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tx_received', instance.txReceived);
  writeNotNull('tx_spent', instance.txSpent);
  return val;
}

_$ApiTxIdImpl _$$ApiTxIdImplFromJson(Map json) => _$ApiTxIdImpl(
      transactionId: json['transaction_id'] as String,
      blockTime: _$JsonConverterFromJson<Object, int>(
          json['block_time'], const _StrictHistoryInt().fromJson),
    );

Map<String, dynamic> _$$ApiTxIdImplToJson(_$ApiTxIdImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'block_time',
      _$JsonConverterToJson<Object, int>(
          instance.blockTime, const _StrictHistoryInt().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ApiTxInputImpl _$$ApiTxInputImplFromJson(Map json) => _$ApiTxInputImpl(
      transactionId: json['transaction_id'] as String,
      index: const _StrictHistoryInt().fromJson(json['index'] as Object),
      previousOutpointHash: json['previous_outpoint_hash'] as String,
      previousOutpointIndex:
          BigInt.parse(json['previous_outpoint_index'] as String),
      signatureScript: json['signature_script'] as String,
      sigOpCount: _historySigOpCountFromJson(json['sig_op_count']),
      computeBudget: _historyUint16FromJson(json['compute_budget']),
      previousOutpointAddress: json['previous_outpoint_address'] as String?,
      previousOutpointAmount: _$JsonConverterFromJson<Object, int>(
          json['previous_outpoint_amount'], const _StrictHistoryInt().fromJson),
    );

Map<String, dynamic> _$$ApiTxInputImplToJson(_$ApiTxInputImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
    'index': const _StrictHistoryInt().toJson(instance.index),
    'previous_outpoint_hash': instance.previousOutpointHash,
    'previous_outpoint_index': instance.previousOutpointIndex.toString(),
    'signature_script': instance.signatureScript,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sig_op_count', instance.sigOpCount?.toString());
  writeNotNull('compute_budget', instance.computeBudget);
  writeNotNull('previous_outpoint_address', instance.previousOutpointAddress);
  writeNotNull(
      'previous_outpoint_amount',
      _$JsonConverterToJson<Object, int>(
          instance.previousOutpointAmount, const _StrictHistoryInt().toJson));
  return val;
}

_$ApiTxOutputImpl _$$ApiTxOutputImplFromJson(Map json) => _$ApiTxOutputImpl(
      transactionId: json['transaction_id'] as String,
      index: const _StrictHistoryInt().fromJson(json['index'] as Object),
      amount: const _StrictHistoryInt().fromJson(json['amount'] as Object),
      scriptPublicKey: json['script_public_key'] as String,
      scriptPublicKeyAddress: json['script_public_key_address'] as String,
      scriptPublicKeyType: json['script_public_key_type'] as String,
    );

Map<String, dynamic> _$$ApiTxOutputImplToJson(_$ApiTxOutputImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': const _StrictHistoryInt().toJson(instance.index),
      'amount': const _StrictHistoryInt().toJson(instance.amount),
      'script_public_key': instance.scriptPublicKey,
      'script_public_key_address': instance.scriptPublicKeyAddress,
      'script_public_key_type': instance.scriptPublicKeyType,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map json) => _$TransactionImpl(
      subnetworkId: json['subnetwork_id'] as String?,
      version: _historyUint16FromJson(json['version']),
      payload: json['payload'] as String?,
      transactionId: json['transaction_id'] as String,
      blockHash: (json['block_hash'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      blockTime:
          const _StrictHistoryInt().fromJson(json['block_time'] as Object),
      isAccepted: json['is_accepted'] as bool,
      acceptingBlockHash: json['accepting_block_hash'] as String?,
      acceptingBlockBlueScore: _$JsonConverterFromJson<Object, int>(
          json['accepting_block_blue_score'],
          const _StrictHistoryInt().fromJson),
      inputs: (json['inputs'] as List<dynamic>?)
              ?.map((e) =>
                  ApiTxInput.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      outputs: (json['outputs'] as List<dynamic>?)
              ?.map((e) =>
                  ApiTxOutput.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subnetwork_id', instance.subnetworkId);
  writeNotNull('version', instance.version);
  writeNotNull('payload', instance.payload);
  val['transaction_id'] = instance.transactionId;
  val['block_hash'] = instance.blockHash;
  val['block_time'] = const _StrictHistoryInt().toJson(instance.blockTime);
  val['is_accepted'] = instance.isAccepted;
  writeNotNull('accepting_block_hash', instance.acceptingBlockHash);
  writeNotNull(
      'accepting_block_blue_score',
      _$JsonConverterToJson<Object, int>(
          instance.acceptingBlockBlueScore, const _StrictHistoryInt().toJson));
  val['inputs'] = instance.inputs.map((e) => e.toJson()).toList();
  val['outputs'] = instance.outputs.map((e) => e.toJson()).toList();
  return val;
}
