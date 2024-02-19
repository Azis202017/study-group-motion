import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
            ),
            TextFormField(
              controller: controller.emailController,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Password',
            ),
            TextFormField(
              obscureText: true,
              controller: controller.passwordController,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.REGISTER);
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Tidak punya akun? ',
                    style: TextStyle(
                      color: Colors.black,

                    ),
                    children: [
                      TextSpan(
                        text: 'Register disini',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: controller.login,
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      
      ),
    );
  }
}
