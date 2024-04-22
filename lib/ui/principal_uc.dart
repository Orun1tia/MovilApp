import 'package:appmovil/controller/uc_controller.dart';
import 'package:flutter/material.dart';
import 'package:appmovil/ui/UC/header.dart';
import 'package:appmovil/ui/UC/bottom.dart';
import 'package:appmovil/ui/UC/boddy.dart';

class PrincipalUCPage extends StatefulWidget {
  const PrincipalUCPage({super.key, this.pc = 3.0});

  final double pc;

  @override
  _PrincipalUCPageState createState() => _PrincipalUCPageState();
}

class _PrincipalUCPageState extends State<PrincipalUCPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final UCController nameController = UCController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850], // Fondo gris oscuro
        key: scaffoldKey,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07,
              vertical: MediaQuery.of(context).size.height * 0.07),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  Expanded(child: Boddy()),
                  Bottom(),
                ],
              ),
            ],
          ),
        ));
  }
}
