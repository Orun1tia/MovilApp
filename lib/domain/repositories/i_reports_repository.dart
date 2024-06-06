import 'package:flutter_application_1/data/datasources/local/report_local_data_source.dart';
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
    return reportsDatatasource.getReports();
  }
      

  Future<bool> addReport(Reportes report) async {
    return await reportsDatatasource.addReport(report);
  }

  Future<bool> updateReport(Reportes report) async =>
      await reportsDatatasource.updateReport(report);

  Future<bool> deleteReport(int id) async =>
      await reportsDatatasource.deleteReport(id);

  Future<List> getReportsLocal() async {
    return reportsLocalDataSource.getReportsLocal();
  }

  Future<void> addReportLocal(Reportes report) async {
    reportsLocalDataSource.addReport(report);
  }

  Future<void> deleteReportLocal(Reportes report) async {
    reportsLocalDataSource.deleteReport(report);
  }

  Future<void> updateReportLocal(Reportes report) async {
    reportsLocalDataSource.updateReport(report);
  }

  Future<void> deleteAllLocal() async {
    reportsLocalDataSource.deleteAll();
  }
}
