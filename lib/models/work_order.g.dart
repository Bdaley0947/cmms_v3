// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkOrderAdapter extends TypeAdapter<WorkOrder> {
  @override
  final int typeId = 1;

  @override
  WorkOrder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkOrder(
      id: fields[0] as String,
      assetId: fields[1] as String,
      description: fields[2] as String,
      due: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WorkOrder obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.assetId)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.due);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
