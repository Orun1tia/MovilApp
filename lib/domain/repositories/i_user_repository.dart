import '../../data/datasources/remote/i_remote_data_source.dart';
import '../../data/models/user.dart';

class IUserRepository {
  late IDataSourceRemote _userDatatasource;
  IUserRepository() {
    _userDatatasource = IDataSourceRemote();
  }

  Future<List<User>> getUsers() async => await _userDatatasource.getUsers();

  Future<bool> addUser(User user) async =>
      await _userDatatasource.addUser(user);

  Future<bool> updateUser(User user) async =>
      await _userDatatasource.updateUser(user);

  Future<bool> deleteUser(int id) async =>
      await _userDatatasource.deleteUser(id);
}
