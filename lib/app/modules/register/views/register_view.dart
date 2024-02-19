import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
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
              'Name',
            ),
            TextFormField(
              controller: controller.nameController,
            ),
            const SizedBox(
              height: 40,
            ),
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
                Get.toNamed(Routes.LOGIN);
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Sudah punya akun? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login disini',
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
                      onPressed: controller.register,
                      child: const Text('Register'),
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
