import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  const PrimaryTextfield({
    super.key,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context){
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),

      ),
    );
  }
}