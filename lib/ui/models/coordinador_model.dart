import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../pages/Coordinador/coordinador_widget.dart' show PrincipalUcWidget;
import 'package:flutter/material.dart';

class PrincipalUcModel extends FlutterFlowModel<PrincipalUcWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}