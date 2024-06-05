import 'package:flutter_application_1/data/datasources/local/report_local_data_source.dart';
import 'package:loggy/loggy.dart';
import '../../data/datasources/remote/i_remote_data_source.dart';
import '../../data/models/report.dart';

class IReportsRepository {
  late IDataSourceRemote reportsDatatasource;
  late ReportsLocalDataSource reportsLocalDataSource;

  IReportsRepository() {
    reportsDatatasource = IDataSourceRemote();
    reportsLocalDataSource = ReportsLocalDataSource();
  }

  Future<List<Reportes>> getReports() async {
    await syncReports();
    return reportsDatatasource.getReports();
  }
      

  Future<bool> addReport(Reportes report) async {
    await reportsDatatasource.addReport(report);
    return await reportsLocalDataSource.addReport(report);
  }

  Future<bool> updateReport(Reportes report) async =>
      await reportsDatatasource.updateReport(report);

  Future<bool> deleteReport(int id) async =>
      await reportsDatatasource.deleteReport(id);

  Future<void> syncReports() async {
    try {
      final cloudReports = await reportsDatatasource.getReports();
      await reportsLocalDataSource.replaceReports(cloudReports);
      // Puedes agregar aquí alguna lógica adicional si la sincronización fue exitosa
    } catch (error) {
      // Manejo de errores en caso de que la sincronización falle
      logInfo("Error syncing reports: $error");
      // Puedes relanzar el error o manejarlo de otra forma
    }
  }
}
