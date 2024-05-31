import '../../data/datasources/remote/i_datasource.dart';
import '../../domain/models/user.dart';
import '../../domain/models/report.dart';
import '../../domain/models/client.dart';

class IUserRepository {
  late IUserDataSource _userDatatasource;
  IUserRepository() {
    _userDatatasource = IUserDataSource();
  }

  Future<List<User>> getUsers() async => await _userDatatasource.getUsers();

  Future<bool> addUser(User user) async =>
      await _userDatatasource.addUser(user);

  Future<bool> updateUser(User user) async =>
      await _userDatatasource.updateUser(user);

  Future<bool> deleteUser(int id) async =>
      await _userDatatasource.deleteUser(id);

  Future<List<Client>> getClients() async => await _userDatatasource.getClients();

  Future<bool> addClient(Client client) async =>
      await _userDatatasource.addClient(client);

  Future<bool> updateClient(Client client) async =>
      await _userDatatasource.updateClient(client);

  Future<bool> deleteClient(int id) async =>
      await _userDatatasource.deleteClient(id);

  Future<List<Reportes>> getReports() async =>
      await _userDatatasource.getReports();

  Future<bool> addReport(Reportes report) async =>
      await _userDatatasource.addReport(report);

  Future<bool> updateReport(Reportes report) async =>
      await _userDatatasource.updateReport(report);

  Future<bool> deleteReport(int id) async =>
      await _userDatatasource.deleteReport(id);

      
}
