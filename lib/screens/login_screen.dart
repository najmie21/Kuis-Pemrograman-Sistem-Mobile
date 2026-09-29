import 'package:flutter/material.dart';
import '../components/font/primary_font.dart';
import '../components/button/primary_button.dart';
import '../components/textfield/primary_textfield.dart';
import 'register_screen.dart';
import 'password_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const PrimaryFont('Login', fontSize: 26, fontWeight: FontWeight.bold)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PrimaryFont('Selamat Datang!', fontSize: 24, fontWeight: FontWeight.bold),
            const SizedBox(height: 20),
            const PrimaryTextfield(hintText: 'Email'),
            const SizedBox(height: 15),
            const PrimaryTextfield(hintText: 'Password', isPassword: true),
            const SizedBox(height: 30),
            PrimaryButton(
              label: 'Masuk',
              onPressed: () {},
              ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => const RegisterScreen());
                  },
                  child: const PrimaryFont('Daftar Baru', color: Color.fromARGB(255, 4, 79, 139)),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const PasswordScreen());
                  },
                  child: const PrimaryFont('Lupa Password?', color: Color.fromARGB(255, 4, 79, 139)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}