import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/client.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:loggy/loggy.dart';

class AdministrarClienteController extends GetxController {
  final UCUseCase _userUseCase = Get.find();
  final RxList<Client> _clients = <Client>[].obs;

  List<Client> get clients => _clients;

  @override
  void onInit() {
    getClients();
    super.onInit();
  }

  Future<void> getClients() async {
    _clients.value = await _userUseCase.getClients();
  }

  Future<void> addOrUpdateClient(
      Client? existingClient, // Cliente existente (null si es nuevo)
      String idTextController,
      String nameTextController
  ) async {
    try {
      if (existingClient != null) {
        // Actualizar cliente existente
        await _userUseCase.updateClient(Client(
          id: existingClient.id,
          iduser: idTextController, // Mantener el ID de usuario existente
          nombre: nameTextController,
        ));
        Get.back(result: "updated");
      } else {
        // Agregar nuevo cliente
        await _userUseCase.addClient(Client(
          id: int.tryParse(idTextController) ?? 0, 
          nombre: nameTextController,
          iduser: randomInteger(1, 999).toString(), // Asumiendo que tienes la función randomInteger
        ));
        Get.back(result: "created");
      }

      getClients(); 

    } catch (e) {
      Get.snackbar('Error', 'No se pudo realizar la operación', snackPosition: SnackPosition.BOTTOM);
      logInfo('Error al agregar/actualizar cliente: $e');
    }
  }

  deleteClient(int id) async {
    await _userUseCase.deleteClient(id);
    await getClients();
  }
}
