import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../models/user.dart';
import '../models/client.dart';
import '../models/report.dart';
import '../repositories/i_user_repository.dart';

class UCUseCase {
  final IUserRepository _repository = Get.find();

  UCUseCase();

  Future<List<User>> getUsers() async {
    logInfo("Getting users from UseCase");
    return await _repository.getUsers();
  }

  Future<void> addUser(User user) async => await _repository.addUser(user);

  Future<void> updateUser(User user) async =>
      await _repository.updateUser(user);

  deleteUser(int id) async => await _repository.deleteUser(id);

  Future<List<Client>> getClients() async {
    logInfo("Getting users from UseCase");
    return await _repository.getClients();
  }

  Future<void> addClient(Client client) async =>
      await _repository.addClient(client);

  Future<void> updateClient(Client client) async =>
      await _repository.updateClient(client);

  Future<void> deleteClient(int id) async => await _repository.deleteClient(id);

  Future<List<Reportes>> getReports() async {
    logInfo("Getting users from UseCase");
    return await _repository.getReports();
  }

  Future<void> addReport(Reportes report) async =>
      await _repository.addReport(report);

  Future<void> updateReport(Reportes report) async =>
      await _repository.updateReport(report);

  Future<void> deleteReport(int id) async => await _repository.deleteReport(id);
  //simulateProcess() async => await _repository.simulateProcess();
}
