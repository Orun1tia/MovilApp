import 'package:flutter_application_1/domain/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarUS_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loggy/loggy.dart';
import 'package:flutter/material.dart';

class AdministrarUSModel extends FlutterFlowModel<AdministrarUSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  int Function(BuildContext, int)? idTextControllerValidator;

  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
  
}
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
