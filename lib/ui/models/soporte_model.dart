import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../pages/Soporte/soporte_widget.dart' show PrincipalUsWidget;
import 'package:flutter/material.dart';

class PrincipalUsModel extends FlutterFlowModel<PrincipalUsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}