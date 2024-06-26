import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import '../../data/models/client.dart';
import '../../data/models/report.dart';
import '../../data/models/user.dart';
import '../../domain/use_case/uc_usecase.dart';

class UCController extends GetxController {
  final _score = 0.obs;

  final RxList<User> _users = <User>[].obs;
  final RxList<Client> _clients = <Client>[].obs;
  final RxList<Reportes> _reports = <Reportes>[].obs;
  final UCUseCase userUseCase = Get.find();

  int get score => _score.value;
  List<User> get users => _users;
  List<Client> get clients => _clients;
  List<Reportes> get reports => _reports;

  @override
  void onInit() {
    getUsers();
    getClients();
    getReports();
    super.onInit();
  }


  getUsers() async {
    logInfo("Getting users");
    _users.value = await userUseCase.getUsers();
  }

  addUser(User user) async {
    logInfo("Add user");
    await userUseCase.addUser(user);
    getUsers();
  }

  updateUser(User user) async {
    logInfo("Update user");
    await userUseCase.updateUser(user);
    getUsers();
  }

  deleteUser(int id) async {
    await userUseCase.deleteUser(id);
    await getUsers();
  }

  ////////////////////
  getClients() async {
    logInfo("Getting clients");
    _clients.value = await userUseCase.getClients();
  }

  addClient(Client client) async {
    logInfo("Add client");
    await userUseCase.addClient(client);
    getUsers();
  }

  updateClient(Client client) async {
    logInfo("Update client");
    await userUseCase.updateClient(client);
    getClients();
  }

 deleteClient(int id) async {
    await userUseCase.deleteClient(id);
    await getClients();
  }
  ////////////

  getReports() async {
    logInfo("Getting reports");
    _reports.value = await userUseCase.getReports();
  }

  addReport(Reportes report) async {
    logInfo("Add report");
    await userUseCase.addReport(report);
    getReports();
  }

  updateReport(Reportes report) async {
    logInfo("Update report");
    await userUseCase.updateReport(report);
    await getReports();
  }

  void deleteReport(int id) async {
    await userUseCase.deleteReport(id);
    getReports();
  }

  // void simulateProcess() async {
  //   await userUseCase.simulateProcess();
  // }
}
