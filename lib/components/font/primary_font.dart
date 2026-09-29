import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryFont extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const PrimaryFont(this.text, {
    super.key,
    this.fontSize = 16,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal
  });
  
  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: GoogleFonts.ebGaramond(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}