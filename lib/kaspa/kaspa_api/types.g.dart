// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAddressBalanceImpl _$$ApiAddressBalanceImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAddressBalanceImpl(
      address: json['address'] as String,
      balance:
          const _StrictRestIntConverter().fromJson(json['balance'] as Object),
    );

Map<String, dynamic> _$$ApiAddressBalanceImplToJson(
        _$ApiAddressBalanceImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': const _StrictRestIntConverter().toJson(instance.balance),
    };

_$ApiUtxoImpl _$$ApiUtxoImplFromJson(Map<String, dynamic> json) =>
    _$ApiUtxoImpl(
      address: json['address'] as String,
      outpoint: ApiOutpoint.fromJson(json['outpoint'] as Map<String, dynamic>),
      utxoEntry:
          ApiUtxoEntry.fromJson(json['utxoEntry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiUtxoImplToJson(_$ApiUtxoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
    };

_$OutpointImpl _$$OutpointImplFromJson(Map<String, dynamic> json) =>
    _$OutpointImpl(
      transactionId: json['transactionId'] as String,
      index: const _StrictRestIntConverter().fromJson(json['index'] as Object),
    );

Map<String, dynamic> _$$OutpointImplToJson(_$OutpointImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'index': const _StrictRestIntConverter().toJson(instance.index),
    };

_$ApiUtxoEntryImpl _$$ApiUtxoEntryImplFromJson(Map<String, dynamic> json) =>
    _$ApiUtxoEntryImpl(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ApiScriptPublicKey.fromJson(
          json['scriptPublicKey'] as Map<String, dynamic>),
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

_$ApiScriptPublicKeyImpl _$$ApiScriptPublicKeyImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiScriptPublicKeyImpl(
      scriptPublicKey: json['scriptPublicKey'] as String,
      version: json['version'] == null
          ? 0
          : const _StrictRestIntConverter().fromJson(json['version'] as Object),
    );

Map<String, dynamic> _$$ApiScriptPublicKeyImplToJson(
        _$ApiScriptPublicKeyImpl instance) =>
    <String, dynamic>{
      'scriptPublicKey': instance.scriptPublicKey,
      'version': const _StrictRestIntConverter().toJson(instance.version),
    };

_$ApiTxLinkImpl _$$ApiTxLinkImplFromJson(Map<String, dynamic> json) =>
    _$ApiTxLinkImpl(
      txReceived: json['tx_received'] as String?,
      txSpent: json['tx_spent'] as String?,
    );

Map<String, dynamic> _$$ApiTxLinkImplToJson(_$ApiTxLinkImpl instance) =>
    <String, dynamic>{
      if (instance.txReceived case final value?) 'tx_received': value,
      if (instance.txSpent case final value?) 'tx_spent': value,
    };

_$ApiTxIdImpl _$$ApiTxIdImplFromJson(Map<String, dynamic> json) =>
    _$ApiTxIdImpl(
      transactionId: json['transaction_id'] as String,
      blockTime: _$JsonConverterFromJson<Object, int>(
          json['block_time'], const _StrictRestIntConverter().fromJson),
    );

Map<String, dynamic> _$$ApiTxIdImplToJson(_$ApiTxIdImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      if (_$JsonConverterToJson<Object, int>(
              instance.blockTime, const _StrictRestIntConverter().toJson)
          case final value?)
        'block_time': value,
    };

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

_$ApiTxInputImpl _$$ApiTxInputImplFromJson(Map<String, dynamic> json) =>
    _$ApiTxInputImpl(
      transactionId: json['transaction_id'] as String,
      index: const _StrictRestIntConverter().fromJson(json['index'] as Object),
      previousOutpointHash: json['previous_outpoint_hash'] as String,
      previousOutpointIndex:
          BigInt.parse(json['previous_outpoint_index'] as String),
      signatureScript: json['signature_script'] as String,
      sigOpCount: json['sig_op_count'] == null
          ? null
          : BigInt.parse(json['sig_op_count'] as String),
      computeBudget: _$JsonConverterFromJson<Object, int>(
          json['compute_budget'], const _StrictRestIntConverter().fromJson),
      previousOutpointAddress: json['previous_outpoint_address'] as String?,
      previousOutpointAmount: _$JsonConverterFromJson<Object, int>(
          json['previous_outpoint_amount'],
          const _StrictRestIntConverter().fromJson),
    );

Map<String, dynamic> _$$ApiTxInputImplToJson(_$ApiTxInputImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': const _StrictRestIntConverter().toJson(instance.index),
      'previous_outpoint_hash': instance.previousOutpointHash,
      'previous_outpoint_index': instance.previousOutpointIndex.toString(),
      'signature_script': instance.signatureScript,
      if (instance.sigOpCount?.toString() case final value?)
        'sig_op_count': value,
      if (_$JsonConverterToJson<Object, int>(
              instance.computeBudget, const _StrictRestIntConverter().toJson)
          case final value?)
        'compute_budget': value,
      if (instance.previousOutpointAddress case final value?)
        'previous_outpoint_address': value,
      if (_$JsonConverterToJson<Object, int>(instance.previousOutpointAmount,
              const _StrictRestIntConverter().toJson)
          case final value?)
        'previous_outpoint_amount': value,
    };

_$ApiTxOutputImpl _$$ApiTxOutputImplFromJson(Map<String, dynamic> json) =>
    _$ApiTxOutputImpl(
      transactionId: json['transaction_id'] as String,
      index: const _StrictRestIntConverter().fromJson(json['index'] as Object),
      amount:
          const _StrictRestIntConverter().fromJson(json['amount'] as Object),
      scriptPublicKey: json['script_public_key'] as String,
      scriptPublicKeyAddress: json['script_public_key_address'] as String,
      scriptPublicKeyType: json['script_public_key_type'] as String,
    );

Map<String, dynamic> _$$ApiTxOutputImplToJson(_$ApiTxOutputImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': const _StrictRestIntConverter().toJson(instance.index),
      'amount': const _StrictRestIntConverter().toJson(instance.amount),
      'script_public_key': instance.scriptPublicKey,
      'script_public_key_address': instance.scriptPublicKeyAddress,
      'script_public_key_type': instance.scriptPublicKeyType,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      subnetworkId: json['subnetwork_id'] as String?,
      version: _$JsonConverterFromJson<Object, int>(
          json['version'], const _StrictRestIntConverter().fromJson),
      transactionId: json['transaction_id'] as String,
      blockHash: (json['block_hash'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      blockTime: const _StrictRestIntConverter()
          .fromJson(json['block_time'] as Object),
      isAccepted: json['is_accepted'] as bool,
      acceptingBlockHash: json['accepting_block_hash'] as String?,
      acceptingBlockBlueScore: _$JsonConverterFromJson<Object, int>(
          json['accepting_block_blue_score'],
          const _StrictRestIntConverter().fromJson),
      inputs: (json['inputs'] as List<dynamic>?)
              ?.map((e) => ApiTxInput.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      outputs: (json['outputs'] as List<dynamic>?)
              ?.map((e) => ApiTxOutput.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      if (instance.subnetworkId case final value?) 'subnetwork_id': value,
      if (_$JsonConverterToJson<Object, int>(
              instance.version, const _StrictRestIntConverter().toJson)
          case final value?)
        'version': value,
      'transaction_id': instance.transactionId,
      'block_hash': instance.blockHash,
      'block_time': const _StrictRestIntConverter().toJson(instance.blockTime),
      'is_accepted': instance.isAccepted,
      if (instance.acceptingBlockHash case final value?)
        'accepting_block_hash': value,
      if (_$JsonConverterToJson<Object, int>(instance.acceptingBlockBlueScore,
              const _StrictRestIntConverter().toJson)
          case final value?)
        'accepting_block_blue_score': value,
      'inputs': instance.inputs.map((e) => e.toJson()).toList(),
      'outputs': instance.outputs.map((e) => e.toJson()).toList(),
    };
