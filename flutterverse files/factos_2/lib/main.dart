// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_web_libraries_in_flutter

//import 'dart:html';

import 'package:flutter/material.dart';

import 'factspage.dart';

void main() {
  runApp(Factos());
}

class Factos extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);    //for backend or authentication

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factos',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  //const LoginPage({ Key? key }) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SnackBar snackBar = SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      "Login Failed! Try Again.",
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    ),
  );

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
          child: SingleChildScrollView(
            //SingleChildScrollView around "Column" widget
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: CircleAvatar(
                    radius: 100,
                    //or [CircleAvatar(child: Image(image),),],
                    backgroundImage: AssetImage('images/mscLogo.png'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  child: Card(
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
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: usernameController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      //V V Imp...
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Username',
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      //V V Imp...
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  //Reccomended by flutter
                  onPressed: () {
                    if (usernameController.text == "Rakshit" &&
                        passwordController.text == "12345678") {
                      //.text is used because here without .text data types of variable and value wont be same bcs variable is of TextEditingController data type whereas value is a string.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FactsPage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      //Padding around "text" to create space between text and button i.e., internal and external widget
                      horizontal: 40,
                      vertical: 15,
                    ),
                    child: Text(
                      'Sign In!',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
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
      ),
    );
  }
}
