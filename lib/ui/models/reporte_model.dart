import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../pages/General/Reporte/reporte_widget.dart' show ReporteWidget;
import 'package:flutter/material.dart';

class ReporteModel extends FlutterFlowModel<ReporteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;

  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  DateTime? datePicked;
  FocusNode? resumenFocusNode;
  TextEditingController? resumenTextController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    resumenFocusNode?.dispose();
    resumenTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();
  }
}