// ignore_for_file: file_names, camel_case_types

import 'package:hive/hive.dart';

part 'reportsDB.g.dart';

@HiveType(typeId: 1)
class reportsDB extends HiveObject {
  reportsDB({
    required this.id,
    required this.horaI,
    required this.horaF,
    required this.nombreCliente,
    required this.idCliente,
    required this.resumen,
    required this.calificacion,
    required this.nombreUS,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String horaI;
  @HiveField(2)
  String horaF;
  @HiveField(3)
  String nombreCliente;
  @HiveField(4)
  int idCliente;
  @HiveField(5)
  String resumen;
  @HiveField(6)
  int calificacion;
  @HiveField(7)
  String nombreUS;
}