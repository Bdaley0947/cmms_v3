// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) => WorkOrder(
      id: json['id'] as String,
      asset: json['asset'] as String,
      assetName: json['assetName'] as String,
      trade: json['trade'] as String,
      status: json['status'] as String,
      instruction: json['instruction'] as String,
      notes: json['notes'] as String,
      estMH: json['estMH'] as String,
      actMH: json['actMH'] as String,
      dueDate: json['dueDate'] as String,
      department: json['department'] as String,
      jobType: json['jobType'] as String,
      priority: json['priority'] as String,
    );

Map<String, dynamic> _$WorkOrderToJson(WorkOrder instance) => <String, dynamic>{
      'id': instance.id,
      'asset': instance.asset,
      'assetName': instance.assetName,
      'trade': instance.trade,
      'status': instance.status,
      'instruction': instance.instruction,
      'notes': instance.notes,
      'estMH': instance.estMH,
      'actMH': instance.actMH,
      'dueDate': instance.dueDate,
      'department': instance.department,
      'jobType': instance.jobType,
      'priority': instance.priority,
    };
