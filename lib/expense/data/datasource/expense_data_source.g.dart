// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_data_source.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseDataSourceAdapter extends TypeAdapter<ExpenseDataSource> {
  @override
  final int typeId = 1;

  @override
  ExpenseDataSource read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseDataSource(
      name: fields[0] as String,
      price: fields[1] as int,
      category: fields[2] as Category,
      date: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenseDataSource obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseDataSourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
