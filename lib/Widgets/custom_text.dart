import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontweight ;
  final Color color;
  final double wordSpacing;
  final VoidCallback? onClick;

  const CustomText({
    this.size  = 18,
    required this.text,
    this.fontweight = FontWeight.w500,
    this.color = Colors.black,
    this.wordSpacing = 1,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
              text,
              style: TextStyle(
                  fontSize: size,
                  fontWeight: fontweight,
                  color: color,
                  wordSpacing: wordSpacing),
            )
          : TextButton(
              onPressed: () => onClick!.call(),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: size,
                    fontWeight: fontweight,
                    color: color,
                    wordSpacing: wordSpacing),
              ),
            ),
    );
  }
}
