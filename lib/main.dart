// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/repositories/i_user_repository.dart';
import 'package:flutter_application_1/domain/use_case/uc_usecase.dart';
import 'package:flutter_application_1/ui/controllers/administrarCliente_model%20.dart';
import 'package:flutter_application_1/ui/controllers/administrarUS_model.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarUS_widget.dart';
import 'package:flutter_application_1/ui/pages/General/Login/login_widget.dart';
import 'package:flutter_application_1/ui/pages/General/Reporte/reporte_widget.dart';
import 'package:flutter_application_1/ui/pages/Soporte/soporte_widget.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/administrarCliente_widget.dart';
import 'package:flutter_application_1/ui/pages/Coordinador/Coordinador_widget.dart';
import 'package:get/get.dart';
// Asegúrate de que la ruta es correcta y apunta a tu archivo LoginWidget

void main() {
    Get.put(IUserRepository());
    Get.put(UCUseCase());
    Get.put(AdministrarClienteController());
    Get.put(UCController());
    Get.put(AdministrarUSController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'Login App', // Cambia el título según lo necesites
      theme: ThemeData(
          primaryColor: const Color.fromARGB(
              255, 205, 152, 58) // Puedes personalizar el tema
          ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => LoginModel());
          }),
        ),
        GetPage(
          name: '/reporte',
          page: () => ReporteWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => ReporteModel());
          }),
        ),
        GetPage(
          name: '/soporte',
          page: () => PrincipalUsWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => AdministrarUSModel());
          }),
        ),
        GetPage(
          name: '/adminsoporte',
          page: () => AdministrarUSWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => AdministrarUSModel());
          }),
        ),
        GetPage(
          name: '/admincliente',
          page: () => AdministrarClienteWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => AdministrarClienteModel());
          }),
        ),
        GetPage(
          name: '/coordinador',
          page: () => PrincipalUcWidget(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => PrincipalUcModel());
          }),
        ),
      ],
    );
  }
}
