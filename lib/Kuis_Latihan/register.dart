import 'package:flutter/material.dart';
import 'text_google.dart';

class Register extends StatefulWidget{
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();

}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: TextGoogle("Register")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextGoogle('Selamat Datang Pengguna Baru!'),
            TextButton.icon(
              onPressed: () {}, 
              label: TextGoogle('klik untuk daftar'),
            )
          //Text('selamat datng pendatang baru!'),
          //TextButton.icon(onPressed: () {}, label: TextGoogle)),
          ],
        ),
      ),
    );
  }
}