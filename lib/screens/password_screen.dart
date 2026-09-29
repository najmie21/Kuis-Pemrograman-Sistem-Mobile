import 'package:flutter/material.dart';
import '../components/font/primary_font.dart';
import '../components/button/primary_button.dart';
import '../components/textfield/primary_textfield.dart';
import 'package:get/get.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const PrimaryFont('Reset Password', fontSize: 20, fontWeight: FontWeight.bold,)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PrimaryFont('Silahkan buat password baru untuk akun anda.', fontSize: 16),
            const SizedBox(height: 20),
    
            const PrimaryTextfield(hintText: 'Email'),
            const SizedBox(height: 15),
            
            const PrimaryTextfield(hintText: 'Password Baru', isPassword: true),
            const SizedBox(height: 15),
            
            const PrimaryTextfield(hintText: 'Konfirmasi Password Baru', isPassword: true),
            const SizedBox(height: 30),

            PrimaryButton(
              label: 'Simpan Password',
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