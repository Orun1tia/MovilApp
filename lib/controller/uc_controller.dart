import 'package:flutter/material.dart';

class UCController {
  final TextEditingController nameController = TextEditingController(); // Define el controlador

  // Métodos para manipular el controlador
  void setName() {
    nameController.text = "papaute";
  }

  String getName() {
    setName();
    return nameController.text;
  }

  void clearName() {
    nameController.clear();
  }
}
