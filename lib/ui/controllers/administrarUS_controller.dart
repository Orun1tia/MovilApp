import 'package:flutter_application_1/data/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:flutter/material.dart';

class AdministrarUSController extends GetxController {
  final _score = 0.obs;

  final RxList<User> _users = <User>[].obs;
  final UCUseCase userUseCase = Get.find();

  int get score => _score.value;
  List<User> get users => _users;

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  void incrementScore() {
    if (_score.value < 5) {
      _score.value++;
    }
  }

  void decrementScore() {
    if (_score.value > 0) {
      _score.value--;
    }
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
    await userUseCase.updateUser(user);
    getUsers(); 
  }

  void deleteUser(int id) async {
    await userUseCase.deleteUser(id);
    getUsers();
  }

void setTextFieldText(TextEditingController controller, String text) {
    controller.text = text;
}

}
