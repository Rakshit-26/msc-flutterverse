// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_web_libraries_in_flutter

//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Factos());
}

class Factos extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);    //for backend or authentication

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Factos',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  //const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff182C4A),
      body: SafeArea(
        //safearea takes only one widget so we used child
        /*child: Text(
          'Factos',
          style: TextStyle(fontSize: 30),*/
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                //or [CircleAvatar(child: Image(image),),],
                backgroundImage: AssetImage('images/mscLogo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 40,
                child: ListTile(
                  leading: Icon(Icons.domain),
                  trailing: Text(
                    //title instead of trailing
                    'MSC KIIT',
                    style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(),
              SizedBox(
                height: 20,
              ),
              TextField(),
              ElevatedButton(
                //Reccomended by flutter
                onPressed: () {},
                child: Text('Sign In!'),
              ),
              /*RaisedButton(    //Not reccomended by flutter
                onPressed: () {},
                child: Text('Sign In!'),
              ),*/
              /*child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 80),
                ),
              ),*/
              /*Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.domain),
                    Text(
                      'MSC KIIT',
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
