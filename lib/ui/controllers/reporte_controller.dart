import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/report.dart';
import 'package:flutter_application_1/data/models/user.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:loggy/loggy.dart';

class ReporteController extends GetxController {
  final _isConnected = false.obs;
  final UCUseCase _userUseCase = Get.find();
  final RxList<Reportes> _reports = <Reportes>[].obs;

  List<Reportes> get reports => _reports;
  bool get isConnected => _isConnected.value;

  @override
  void onInit() {
    getReports();
    super.onInit();
    _checkConnection();
    InternetConnectionCheckerPlus().onStatusChange.listen((status) {
      _isConnected.value = status == InternetConnectionStatus.connected;
    });
  }

  Future<void> getReports() async {
    _reports.value = await _userUseCase.getReports();
  }

  Future<void> _checkConnection() async {
    _isConnected.value = await InternetConnectionCheckerPlus().hasConnection;
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
        id: randomInteger(0, 999),
        horaI: horaInicio,
        horaF: horaFinal,
        nombreCliente: nombreCliente,
        idCliente: int.tryParse(idClienteText) ?? 0,
        resumen: resumen,
        calificacion: 0,
        nombreUS: userToUpdate.nombre,
      );

      User updatedUser = User(
        id: userToUpdate.id,
        email: userToUpdate.email,
        password: userToUpdate.password,
        nombre: userToUpdate.nombre,
        reportes: userToUpdate.reportes + 1,
      );

      if (isConnected == false) {
        final reportsLocal = await _userUseCase.getReportsLocal();
        if (reportsLocal.isNotEmpty) {
          for (var reportLocal in reportsLocal) {
            await _userUseCase.addReport(reportLocal);
          }
          await _userUseCase.deleteAllLocal();
        }
        await _userUseCase.addReportLocal(report);
      } else {
        await _userUseCase.addReport(report);
      }
      
      await _userUseCase.updateUser(updatedUser);

      Get.back(result: 'Reporte enviado');
    } catch (e) {
      Get.snackbar('Error', 'No se pudo agregar el reporte',
          snackPosition: SnackPosition.BOTTOM);
      logInfo('Error al agregar el reporte: $e');
    }
  }
}
