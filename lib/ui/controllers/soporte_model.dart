import 'package:flutter_application_1/domain/models/report.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loggy/loggy.dart';
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

class USController extends GetxController {
  final _score = 0.obs;

  final RxList<Reportes> _reports = <Reportes>[].obs;
  final UCUseCase userUseCase = Get.find();

  int get score => _score.value;
  List<Reportes> get reports => _reports;

  @override
  void onInit() {
    getReports();
    super.onInit();
  }

  getReports() async {
    logInfo("Getting reports");
    _reports.value = await userUseCase.getReports();
  }

}