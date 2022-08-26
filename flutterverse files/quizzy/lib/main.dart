// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
//import 'landing.dart';
import 'splash.dart';
//import 'score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      //home: Score(),
    );
  }
}
