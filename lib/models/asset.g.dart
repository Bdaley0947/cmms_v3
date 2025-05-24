// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      criticality: json['criticality'] as String,
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'status': instance.status,
      'type': instance.type,
      'criticality': instance.criticality,
    };
