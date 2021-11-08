import 'package:flutter/material.dart';
import 'package:proyek_leap/login.dart';

void main() {
  runApp(const Route());
}

class Route extends StatelessWidget {
  const Route({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}