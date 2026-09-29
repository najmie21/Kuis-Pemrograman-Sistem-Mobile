import 'package:flutter/material.dart';
import '../components/font/primary_font.dart';
import '../components/button/primary_button.dart';
import '../components/textfield/primary_textfield.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const PrimaryFont('Register', fontSize: 20, fontWeight: FontWeight.bold,)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PrimaryTextfield(hintText: 'Nama Lengkap'),
            const SizedBox(height: 15),
            const PrimaryTextfield(hintText: 'Email'),
            const SizedBox(height: 15),
            const PrimaryTextfield(hintText: 'Password Baru', isPassword: true),
            const SizedBox(height: 30),
            PrimaryButton(
              label: 'Daftar Sekarang',
              onPressed: () {
                Get.back(); // Kembali ke halaman Login
              },
            ),
          ],
        ),
      ),
    );
  }
}