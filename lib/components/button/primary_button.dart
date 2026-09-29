import 'package:flutter/material.dart';
import '../font/primary_font.dart';

class PrimaryButton extends StatelessWidget{
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(243, 224, 118, 153),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: PrimaryFont(label, color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold,),
    );
  }
}