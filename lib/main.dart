import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:http/http.dart' as http;

// The main function is the starting point for all our flutter App.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('audio-xylophone/note$soundNumber.wav');
  }

  Widget buildKey() {
    return Expanded(
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          playSound(1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: null,
                    color: Colors.orange)),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: null,
                    color: Colors.yellow)),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: null,
                    color: Colors.blue)),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: null,
                    color: Colors.green)),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: null,
                    color: Colors.purple)),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: null,
                    color: Colors.deepPurple)),
          ],
        )),
      ),
    );
  }
}
