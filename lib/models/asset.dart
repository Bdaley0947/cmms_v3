import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

@JsonSerializable()
class Asset {
  final String id;
  final String name;
  final String location;
  final String status;
  final String type;
  final String criticality;

  Asset({
    required this.id,
    required this.name,
    required this.location,
    required this.status,
    required this.type,
    required this.criticality,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
  Map<String, dynamic> toJson() => _$AssetToJson(this);
}
