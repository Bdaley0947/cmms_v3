// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technician.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Technician _$TechnicianFromJson(Map<String, dynamic> json) => Technician(
      id: json['id'] as String,
      name: json['name'] as String,
      trade: json['trade'] as String,
      shift: json['shift'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$TechnicianToJson(Technician instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'trade': instance.trade,
      'shift': instance.shift,
      'status': instance.status,
    };
