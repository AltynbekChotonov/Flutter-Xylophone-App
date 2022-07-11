// ignore_for_file: non_constant_identifier_names, deprecated_member_use, unused_import

import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_9/main.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Xylophone App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget soundtile({@required Color? color, @required String? soundNumber}) {
    final player = AudioCache();
    return FlatButton(
      height: MediaQuery.of(context).size.height / 7.23,
      color: color,
      onPressed: () {
        player;
        Play("nota$soundNumber.wav");
      },
      child: const Text(""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundtile(color: Colors.red, soundNumber: "1"),
            soundtile(color: Colors.orange, soundNumber: "2"),
            soundtile(color: Colors.yellow, soundNumber: "3"),
            soundtile(color: Colors.green, soundNumber: "4"),
            soundtile(color: Colors.teal, soundNumber: "5"),
            soundtile(color: Colors.blue, soundNumber: "6"),
            soundtile(color: Colors.purple, soundNumber: "7"),
          ],
        ),
      ),
    );
  }
}

void Play(String s) {}
