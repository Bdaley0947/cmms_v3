// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_action.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SyncActionAdapter extends TypeAdapter<SyncAction> {
  @override
  final int typeId = 1;

  @override
  SyncAction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SyncAction(
      type: fields[0] as String,
      payload: fields[1] as String,
      createdAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, SyncAction obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.payload)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncActionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
