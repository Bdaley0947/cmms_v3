// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PM _$PMFromJson(Map<String, dynamic> json) => PM(
      id: json['id'] as String,
      asset: json['asset'] as String,
      assetName: json['assetName'] as String,
      frequency: json['frequency'] as String,
      lastPerformed: json['lastPerformed'] as String,
      nextDue: json['nextDue'] as String,
      instruction: json['instruction'] as String,
    );

Map<String, dynamic> _$PMToJson(PM instance) => <String, dynamic>{
      'id': instance.id,
      'asset': instance.asset,
      'assetName': instance.assetName,
      'frequency': instance.frequency,
      'lastPerformed': instance.lastPerformed,
      'nextDue': instance.nextDue,
      'instruction': instance.instruction,
    };
