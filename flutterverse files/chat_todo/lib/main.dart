import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_todo/Pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Home(),
    )
  }

  class Home extends StatelessWidget {
    const Home({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return StreamBuilder(    //The bf whom gf talks to
        builder: (context, snap) => FirebaseAuth.instance.currentUser == null ? LoginPage() : HomePage(),    
        //builder is argument of "StreamBuilder"  
        //snap or snapshot is data of the StreamBuilder  
        //FirebaseAuth is a class and instance is its static method i.e., we can call method without making an object of its class
        //currentUser is an argument which returns currently signed in user otherwise returns null
        stream: FirebaseAuth.instance.authStateChanges(),
        //stream is our gf which will keep on telling uppdates
        //authStateChanges is a stream which will tell that you logged in/out when you log in/out
      );
  }
}