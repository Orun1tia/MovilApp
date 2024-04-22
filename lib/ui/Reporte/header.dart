import 'package:appmovil/controller/uc_controller.dart';
import 'package:flutter/material.dart';

class ReportHeader extends StatefulWidget {
  const ReportHeader({super.key});

  @override
  State<ReportHeader> createState() => _ReportHeaderState();
}

class _ReportHeaderState extends State<ReportHeader> {
  final UCController nameController = UCController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.03),
          child: Padding(
            padding: const EdgeInsets.only(top: 100), 
          ),
        ),
        Text("Nuevo reporte",
            style: TextStyle(color: Colors.white, fontSize: 32.0)),
        const Text('Soporte',
            style: TextStyle(color: Color(0xFF9C742C), fontSize: 15.0)),
      ],
    );
  }
}

