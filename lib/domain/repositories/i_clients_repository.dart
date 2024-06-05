import '../../data/datasources/remote/i_remote_data_source.dart';
import '../../data/models/client.dart';

class IClientsRepository {
  late IDataSourceRemote _clientsDatatasource;
  IClientsRepository() {
    _clientsDatatasource = IDataSourceRemote();
  }

  Future<List<Client>> getClients() async => await _clientsDatatasource.getClients();

  Future<bool> addClient(Client client) async =>
      await _clientsDatatasource.addClient(client);

  Future<bool> updateClient(Client client) async =>
      await _clientsDatatasource.updateClient(client);

  Future<bool> deleteClient(int id) async =>
      await _clientsDatatasource.deleteClient(id);
}
