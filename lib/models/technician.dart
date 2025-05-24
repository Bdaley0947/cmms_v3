import 'package:json_annotation/json_annotation.dart';

part 'technician.g.dart';

@JsonSerializable()
class Technician {
  final String id;
  final String name;
  final String trade;
  final String shift;
  final String status;

  Technician({
    required this.id,
    required this.name,
    required this.trade,
    required this.shift,
    required this.status,
  });

  factory Technician.fromJson(Map<String, dynamic> json) =>
      _$TechnicianFromJson(json);
  Map<String, dynamic> toJson() => _$TechnicianToJson(this);
}
