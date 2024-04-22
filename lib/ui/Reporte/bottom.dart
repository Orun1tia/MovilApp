import 'package:flutter/material.dart';

class ReportBottom extends StatelessWidget {
  final Function onSendReport;

  const ReportBottom({Key? key, required this.onSendReport}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.08 , horizontal: 20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 68, 137, 255),
      ),
      child: ElevatedButton(
        onPressed: () {
          onSendReport(); // Acción para enviar el reporte
        },
        child: const Text('Enviar Reporte'),
      ),
    );
  }
}
