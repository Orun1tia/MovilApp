import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/domain/models/report.dart';
import 'package:flutter_application_1/domain/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:loggy/loggy.dart';

class ReporteController extends GetxController {
  final UCUseCase _userUseCase = Get.find();
  final RxList<Reportes> _reports = <Reportes>[].obs;

  List<Reportes> get reports => _reports;

  @override
  void onInit() {
    getReports();
    super.onInit();
  }

  Future<void> getReports() async {
    _reports.value = await _userUseCase.getReports();
  }

  Future<void> addReportAndUpdateUser(
      User userToUpdate,
      String nombreCliente,
      String idClienteText,
      String resumen,
      String horaInicio,
      String horaFinal) async {
    try {
      Reportes report = Reportes(
        id: randomInteger(
            0, 999),
        horaI: horaInicio,
        horaF: horaFinal,
        nombreCliente: nombreCliente,
        idCliente: int.tryParse(idClienteText) ?? 0,
        resumen: resumen,
        calificacion: 0,
        nombreUS: userToUpdate.nombre,
      );

      await _userUseCase.addReport(report);

      User updatedUser = User(
        id: userToUpdate.id,
        email: userToUpdate.email,
        password: userToUpdate.password,
        nombre: userToUpdate.nombre,
        reportes: userToUpdate.reportes + 1,
      );
      await _userUseCase.updateUser(updatedUser);

      Get.back(result: 'Reporte enviado');
    } catch (e) {
      Get.snackbar('Error', 'No se pudo agregar el reporte',
          snackPosition: SnackPosition.BOTTOM);
      logInfo('Error al agregar el reporte: $e');
    }
  }
}
