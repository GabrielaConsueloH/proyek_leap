import 'package:flutter/material.dart';

import 'Layout/home.dart';
import 'Layout/login.dart';
import 'Layout/request_darah_instansi.dart';

void main() {
  runApp(const Route());
}

class Route extends StatelessWidget {
  const Route({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) =>request_darah_instansi(),
        '/home' : (context) => home(),
        '/req_instansi' : (context) => request_darah_instansi(),
      },
    );
  }
}