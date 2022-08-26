// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzy/landing.dart';

class SplashPage extends StatefulWidget {
  //const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage(); //This funcn nextPage(containing duration) is passed so that the funcn waits for that period of time.
  }

  nextPage() async {
    //await funcn    //can be used for loading screen
    await Future.delayed(
        Duration(milliseconds: 1500), () {}); //1.5 secs //cmd for waiting 1.5s
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LandingPage(),
      ),
    ); //cmd for going to landing.dart page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          'Quizzy',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
