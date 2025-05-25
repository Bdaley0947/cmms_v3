import 'package:json_annotation/json_annotation.dart';

part 'work_order.g.dart';

@JsonSerializable()
class WorkOrder {
  final String id;
  final String asset;
  final String assetName;
  final String trade;
  final String status;
  final String instruction;
  final String notes;
  final String estMH;
  final String actMH;
  final String dueDate;
  final String department;
  final String jobType;
  final String priority;

  WorkOrder({
    required this.id,
    required this.asset,
    required this.assetName,
    required this.trade,
    required this.status,
    required this.instruction,
    required this.notes,
    required this.estMH,
    required this.actMH,
    required this.dueDate,
    required this.department,
    required this.jobType,
    required this.priority,
  });

  factory WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderFromJson(json);
  Map<String, dynamic> toJson() => _$WorkOrderToJson(this);
}
