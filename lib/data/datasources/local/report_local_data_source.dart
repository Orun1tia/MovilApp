import 'package:flutter_application_1/data/models/report.dart';
import 'package:flutter_application_1/data/models/reportsDB.dart';
import 'package:hive/hive.dart';
import 'package:loggy/loggy.dart';

class ReportsLocalDataSource {

  Future<List<Reportes>> getReportsLocal() async {
    List<Reportes> reports = [];
    var box = Hive.box('reports');
    for (var i = 0; i < box.length; i++) {
      reports.add(Reportes(
          id: box.getAt(i).id,
          horaI: box.getAt(i).horaI,
          horaF: box.getAt(i).horaF,
          nombreCliente: box.getAt(i).nombreCliente,
          idCliente: box.getAt(i).idCliente,
          resumen: box.getAt(i).resumen,
          calificacion: box.getAt(i).calificacion,
          nombreUS: box.getAt(i).nombreUS));
    }
    return reports;
  }

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

  Future<void> deleteAll() async {
    await Hive.box('reports').clear();
  }

  deleteReport(Reportes report) async {
    await Hive.box('reports').delete(report.id);
  }

  updateReport(Reportes report) async {
    logInfo("Updating entry with id ${report.id}");
    await Hive.box('reports').put(
        report.id,
        reportsDB(
            id: report.id,
            horaI: report.horaI,
            horaF: report.horaF,
            nombreCliente: report.nombreCliente,
            idCliente: report.idCliente,
            resumen: report.resumen,
            calificacion: report.calificacion,
            nombreUS: report.nombreUS));
  }
}
