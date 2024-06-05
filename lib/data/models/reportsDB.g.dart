// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reportsDB.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class reportsDBAdapter extends TypeAdapter<reportsDB> {
  @override
  final int typeId = 1;

  @override
  reportsDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return reportsDB(
      id: fields[0] as int,
      horaI: fields[1] as String,
      horaF: fields[2] as String,
      nombreCliente: fields[3] as String,
      idCliente: fields[4] as int,
      resumen: fields[5] as String,
      calificacion: fields[6] as int,
      nombreUS: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, reportsDB obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.horaI)
      ..writeByte(2)
      ..write(obj.horaF)
      ..writeByte(3)
      ..write(obj.nombreCliente)
      ..writeByte(4)
      ..write(obj.idCliente)
      ..writeByte(5)
      ..write(obj.resumen)
      ..writeByte(6)
      ..write(obj.calificacion)
      ..writeByte(7)
      ..write(obj.nombreUS);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is reportsDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
