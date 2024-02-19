import 'package:deep_dive_get_cli/app/routes/app_pages.dart';
import 'package:deep_dive_get_cli/app/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() async {
    bool isLogin = await AuthenticationService()
        .login(email: emailController.text, password: passwordController.text);
    if (isLogin) {
      Get.toNamed(Routes.HOME);
    } else {
      Get.snackbar(
        'Error',
        'Email atau password salah',
        backgroundColor: Colors.red.shade300,
        colorText: Colors.white
      );
    }
  }
}
