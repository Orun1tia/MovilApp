import 'package:flutter_application_1/data/models/report.dart';
import 'package:flutter_application_1/data/models/reportsDB.dart';
import 'package:hive/hive.dart';

class ReportsLocalDataSource {
  addReport(Reportes report) {
    Hive.box('reports').add(reportsDB(
        id: report.id,
        horaI: report.horaI,
        horaF: report.horaF,
        nombreCliente: report.nombreCliente,
        idCliente: report.idCliente,
        resumen: report.resumen,
        calificacion: report.calificacion,
        nombreUS: report.nombreUS));
  }

  Future<void> replaceReports(List<Reportes> newReports) async {
    final box = Hive.box('reports');

    await box.clear();

    for (final report in newReports) {
      await box.add(reportsDB(
        id: report.id,
        horaI: report.horaI,
        horaF: report.horaF,
        nombreCliente: report.nombreCliente,
        idCliente: report.idCliente,
        resumen: report.resumen,
        calificacion: report.calificacion,
        nombreUS: report.nombreUS,
      ));
    }
  }
}
