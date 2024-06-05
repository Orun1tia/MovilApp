import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';

class LoginController extends GetxController {
  final UCUseCase _userUseCase = Get.find();
  final RxList<User> _users = <User>[].obs;
  final Rx<User?> _loggedInUser = Rx<User?>(null); 

  List<User> get users => _users;
  User? get loggedInUser => _loggedInUser.value;

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  Future<void> getUsers() async {
    _users.value = await _userUseCase.getUsers();
  }

  void login(String email, String password) {
    User? foundUser = _users.firstWhereOrNull((user) => 
        user.email == email && user.password.toString() == password);

    if (foundUser != null) {
      _loggedInUser.value = foundUser;
      Get.toNamed('/soporte', arguments: foundUser); // Navegar a la pantalla correspondiente
    } else if (email == 'admin' && password == 'admin') {
      Get.toNamed('/coordinador'); 
    } else {
      Get.snackbar(
        "Error de inicio de sesión",
        "Usuario o contraseña incorrectos",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void logout() {
    _loggedInUser.value = null;
    // Puedes agregar lógica adicional de cierre de sesión si es necesario
  }
}

