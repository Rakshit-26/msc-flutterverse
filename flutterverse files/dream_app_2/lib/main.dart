// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key); will be helpful in backend not now

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Color(0xFFE041562), //backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: (Text('Dream App')),
        ),
        body: Center(
            //body: Center(child: Text('Hello World')),
            child: Image(
          //width: 800,
          //height: 800,
          image: AssetImage(
              'images/aventador.png'), //image: NetworkImage('https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/augmented-reality/aventador/svj/11_17/ar_aventador_svj_m.png'),
        )),
        backgroundColor: Colors.black,
      ),
    );
  }
}
