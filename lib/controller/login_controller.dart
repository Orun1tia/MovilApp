import 'package:flutter/material.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordVisibility = false;

  void togglePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
  }
}