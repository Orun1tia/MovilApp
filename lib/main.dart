import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/reportsDB.dart';
import 'package:flutter_application_1/domain/repositories/i_clients_repository.dart';
import 'package:flutter_application_1/domain/repositories/i_reports_repository.dart';
import 'package:flutter_application_1/domain/repositories/i_user_repository.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutter_application_1/ui/controllers/administrarCliente_controller.dart';
import 'package:flutter_application_1/ui/controllers/administrarUS_controller.dart';
import 'package:flutter_application_1/ui/controllers/coordinador_controller.dart';
import 'package:flutter_application_1/ui/controllers/reporte_controller.dart';
import 'package:flutter_application_1/ui/controllers/soporte_controller.dart';
import 'package:flutter_application_1/ui/models/administrarCliente_model.dart';
import 'package:flutter_application_1/ui/models/coordinador_model.dart';
import 'package:flutter_application_1/ui/models/login_model.dart';
import 'package:flutter_application_1/ui/models/soporte_model.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarUS_widget.dart';
import 'package:flutter_application_1/ui/pages/General/Login/login_widget.dart';
import 'package:flutter_application_1/ui/pages/General/Reporte/reporte_widget.dart';
import 'package:flutter_application_1/ui/pages/Soporte/soporte_widget.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarCliente_widget.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/Coordinador_widget.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future <List<Box>> openBox() async {
  List<Box> boxes = [];
  Hive.initFlutter();
  Hive.registerAdapter(reportsDBAdapter());
  boxes.add(await Hive.openBox('reports'));
  return boxes;
}

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await openBox();
    Get.put(IUserRepository());
    Get.put(IReportsRepository());
    Get.put(IClientsRepository());
    Get.put(UCUseCase());
    Get.put(AdministrarClienteController());
    Get.put(UCController());
    Get.put(LoginController());
    Get.put(USController());
    Get.put(UCController());
    Get.put(ReporteController());
    Get.put(AdministrarUSController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'Login App',
      theme: ThemeData(
          primaryColor: const Color.fromARGB(
              255, 205, 152, 58)
          ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => LoginModel());
          }),
        ),
        GetPage(
          name: '/reporte',
          page: () => const ReporteWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => ReporteModel());
          }),
        ),
        GetPage(
          name: '/soporte',
          page: () => const PrincipalUsWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => PrincipalUsModel());
          }),
        ),
        GetPage(
          name: '/adminsoporte',
          page: () => const AdministrarUSWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => AdministrarUSModel());
          }),
        ),
        GetPage(
          name: '/admincliente',
          page: () => const AdministrarClienteWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => AdministrarClienteModel());
          }),
        ),
        GetPage(
          name: '/coordinador',
          page: () => const PrincipalUcWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => PrincipalUcModel());
          }),
        ),
      ],
    );
  }
}