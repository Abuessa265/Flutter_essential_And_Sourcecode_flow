//Navigation -push,pop,replace,removeUntil(without named navigation)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sourch_code_flow/home.dart';//its package import
//import 'home.dart'; //its path import


main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}





