import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../data/models/user.dart';
import '../../data/models/client.dart';
import '../../data/models/report.dart';
import '../repositories/i_user_repository.dart';
import '../repositories/i_reports_repository.dart';
import '../repositories/i_clients_repository.dart';

class UCUseCase {
  final IUserRepository _repositoryUser = Get.find();
  final IReportsRepository _repositoryReport = Get.find();
  final IClientsRepository _repositoryClient = Get.find();

  UCUseCase();

  Future<List<User>> getUsers() async {
    logInfo("Getting users from UseCase");
    return await _repositoryUser.getUsers();
  }

  Future<void> addUser(User user) async => await _repositoryUser.addUser(user);

  Future<void> updateUser(User user) async =>
      await _repositoryUser.updateUser(user);

  deleteUser(int id) async => await _repositoryUser.deleteUser(id);

  Future<List<Client>> getClients() async {
    logInfo("Getting users from UseCase");
    return await _repositoryClient.getClients();
  }

  Future<void> addClient(Client client) async =>
      await _repositoryClient.addClient(client);

  Future<void> updateClient(Client client) async =>
      await _repositoryClient.updateClient(client);

  Future<void> deleteClient(int id) async => await _repositoryClient.deleteClient(id);

  Future<List<Reportes>> getReports() async {
    logInfo("Getting users from UseCase");
    return await _repositoryReport.getReports();
  }

  Future<void> addReport(Reportes report) async =>
      await _repositoryReport.addReport(report);

  Future<void> updateReport(Reportes report) async =>
      await _repositoryReport.updateReport(report);

  Future<void> deleteReport(int id) async => await _repositoryReport.deleteReport(id);

  Future<List> getReportsLocal() async => await _repositoryReport.getReportsLocal();

  Future<void> addReportLocal(Reportes report) async =>
      await _repositoryReport.addReportLocal(report);

  Future<void> deleteReportLocal(Reportes report) async =>
      await _repositoryReport.deleteReportLocal(report);

  Future<void> updateReportLocal(Reportes report) async =>
      await _repositoryReport.updateReportLocal(report);

  Future<void> deleteAllLocal() async => await _repositoryReport.deleteAllLocal();
}
