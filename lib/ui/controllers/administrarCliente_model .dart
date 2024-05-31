// ignore_for_file: unused_import

import 'package:flutter_application_1/domain/models/client.dart';
import 'package:flutter_application_1/domain/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarCliente_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loggy/loggy.dart';
import 'package:flutter/material.dart';

class AdministrarClienteModel extends FlutterFlowModel<AdministrarClienteWidget> {
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
class AdministrarClienteController extends GetxController {
  final _score = 0.obs;

  final RxList<Client> _clients = <Client>[].obs;
  final UCUseCase userUseCase = Get.find();

  int get score => _score.value;
  List<Client> get clients => _clients;

  @override
  void onInit() {
     getClients();
    super.onInit();
  }



    getClients() async {
    logInfo("Getting clients");
    _clients.value = await userUseCase.getClients();
  }

  addClient(Client client) async {
    logInfo("Add client");
    await userUseCase.addClient(client);
    getClients();
  }

  updateClient(Client client) async {
    logInfo("Update client");
    await userUseCase.updateClient(client);
    await getClients();
  }

 deleteClient(int id) async {
    await userUseCase.deleteClient(id);
    await getClients();
  }

}
