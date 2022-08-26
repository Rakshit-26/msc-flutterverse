import 'package:flutter/material.dart';

void main() {
  runApp(MyApp);
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);  -for backend

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //??
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE041562),
          centerTitle: true,
          title: (Text('Dream App')),
        ),
        //body: Center(child: Text('Hello World')),
        body: Center(
            child: Image(
                //image: NetworkImage('https://assets-global.website-files.com/5ff3926f03b3ba043ed639d1/601f3c75f2c09f2d0149fc71_5ea8b3ad30c7f03cf53b68da_design-leadership.jpeg'),
                //image: AssetImage(''),
                )),
        backgroundColor: Colors.black,
      ),
    );
  }
}
