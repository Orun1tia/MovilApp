import 'package:flutter/material.dart';
import 'package:appmovil/ui/Reporte/header.dart';
import 'package:appmovil/ui/Reporte/bottom.dart';
import 'package:appmovil/ui/Reporte/boddy.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  void sendReport() {
    // Lógica para enviar el reporte
    print("Reporte enviado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ReportHeader(),
          Expanded(
            child: ReportBody(), // El cuerpo del reporte
          ),
          ReportBottom(onSendReport: sendReport), // Botón para enviar el reporte
        ],
      ),
    );
  }
}
