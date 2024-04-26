import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/General/Reporte/reporte_widget.dart';
// Asegúrate de que la ruta es correcta y apunta a tu archivo LoginWidget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App', // Cambia el título según lo necesites
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 205, 152, 58) // Puedes personalizar el tema
      ),
      home: const ReporteWidget(), // Carga el widget LoginWidget al inicio
    );
  }
}
