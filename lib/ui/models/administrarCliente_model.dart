import 'package:flutter_application_1/ui/pages/Coordinador/administrarCliente_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
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