// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_logger.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogEventAdapter extends TypeAdapter<LogEvent> {
  @override
  final int typeId = 4;

  @override
  LogEvent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogEvent(
      timestamp: fields[0] as DateTime,
      module: fields[1] as String,
      action: fields[2] as String,
      details: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LogEvent obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.module)
      ..writeByte(2)
      ..write(obj.action)
      ..writeByte(3)
      ..write(obj.details);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogEventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
