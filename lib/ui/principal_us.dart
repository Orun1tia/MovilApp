import 'package:appmovil/controller/uc_controller.dart';
import 'package:flutter/material.dart';
import 'package:appmovil/ui/US/header.dart';
import 'package:appmovil/ui/US/bottom.dart';
import 'package:appmovil/ui/US/boddy.dart';

class PrincipalUSPage extends StatefulWidget {
  const PrincipalUSPage({super.key, this.pc = 3.0});

  final double pc;

  @override
  _PrincipalUSPageState createState() => _PrincipalUSPageState();
}

class _PrincipalUSPageState extends State<PrincipalUSPage> {
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
