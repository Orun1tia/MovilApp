import 'package:flutter_application_1/domain/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loggy/loggy.dart';
import '../pages/General/Login/login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
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

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
class LoginController extends GetxController {
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


  getUsers() async {
    logInfo("Getting users");
    _users.value = await userUseCase.getUsers();
  }

}
