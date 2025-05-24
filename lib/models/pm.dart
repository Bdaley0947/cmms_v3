import 'package:json_annotation/json_annotation.dart';

part 'pm.g.dart';

@JsonSerializable()
class PM {
  final String id;
  final String asset;
  final String assetName;
  final String frequency;
  final String lastPerformed;
  final String nextDue;
  final String instruction;

  PM({
    required this.id,
    required this.asset,
    required this.assetName,
    required this.frequency,
    required this.lastPerformed,
    required this.nextDue,
    required this.instruction,
  });

  factory PM.fromJson(Map<String, dynamic> json) => _$PMFromJson(json);
  Map<String, dynamic> toJson() => _$PMToJson(this);
}
