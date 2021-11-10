import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontweight;
  final Color color;
  final double wordSpacing;

  const CustomText({
    this.size = 18,
    required this.text,
    this.fontweight = FontWeight.w500,
    this.color = Colors.black,
    this.wordSpacing = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: size,
          fontWeight: fontweight,
          color: color,
          wordSpacing: wordSpacing),
    );
  }
}
