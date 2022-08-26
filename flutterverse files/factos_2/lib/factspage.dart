// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math'; //For Random() funcn

class FactsPage extends StatefulWidget {
  @override
  State<FactsPage> createState() => _FactsPageState();
}

class _FactsPageState extends State<FactsPage> {
  //const ({ Key? key }) : super(key: key);
  int factNumber = 1;

  void generateFact() {
    //void is used because no returning value
    setState(() {
      factNumber = Random().nextInt(11) +
          1; //nextInt is used for upper limit //here 0-11(including both) integers will be randomly generated  //But we dont need zero therefore, we added 1 to it
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff182C4A),
      appBar: AppBar(
        leading: Hero(
          tag: 'logo',
          child: CircleAvatar(
            backgroundImage: AssetImage('images/mscLogo.png'),
          ),
        ),
        actions: [
          //V V imp
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
          )
        ],
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: Text(
          'Fact Generator',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/fact$factNumber.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              //FlatButton
              onPressed: () {
                generateFact();
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Next Fact!!!',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
