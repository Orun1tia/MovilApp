import 'package:flutter_application_1/data/models/report.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

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