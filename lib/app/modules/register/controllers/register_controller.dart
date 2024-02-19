import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../services/authentication_service.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void register() async {
    bool isLogin = await AuthenticationService().register(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text);
    if (isLogin) {
      Get.toNamed(Routes.LOGIN);
    } else {
      Get.snackbar('Error', 'Ada yang belum diisi',
          backgroundColor: Colors.red.shade300, colorText: Colors.white);
    }
  }
}
