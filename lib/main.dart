import 'package:appmovil/ui/login.dart';
import 'package:appmovil/ui/principal_uc.dart';
import 'package:appmovil/ui/principal_us.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login App',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[850], // Fondo gris oscuro
      ),
      home: const LoginPage(), // Iniciar con la página de login
    );
  }
}
