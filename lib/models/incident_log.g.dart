// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IncidentLogAdapter extends TypeAdapter<IncidentLog> {
  @override
  final int typeId = 1;

  @override
  IncidentLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IncidentLog(
      id: fields[0] as String,
      summary: fields[1] as String,
      timestamp: fields[2] as DateTime,
      assetId: fields[3] as String,
      isSynced: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, IncidentLog obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.summary)
      ..writeByte(2)
      ..write(obj.timestamp)
      ..writeByte(3)
      ..write(obj.assetId)
      ..writeByte(4)
      ..write(obj.isSynced);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncidentLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
