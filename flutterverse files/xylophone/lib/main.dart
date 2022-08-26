// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xylophone',
        home: Xylophone());
  }
}

class Xylophone extends StatelessWidget {
  //const Xylophone({Key? key}) : super(key: key);

  void playSound(int n) {
    final player =
        AudioCache(); //Audio player created, Audio cache is used as mentioned in documentation(README) of audio player on pub.dev in Audio Cache section(bcs we are using audio from 3rd source i.e., local asset for your flutter project)
    player.play(
        'note$n.wav'); //.play(member function provided by AudioCache() class) used on audio player(created above) to play the audio, string interpolation used $n
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: GestureDetector(
              //Container is wraped with GestureDetector bcs we need to detect gesture when someone clicks on Container
              onTap: () {
                playSound(1);
              },
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
