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

  Widget buildKey({Color color,int playS}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(playS);
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
            buildKey(color: Colors.red,playS: 1),
            buildKey(color: Colors.orange,playS: 2),
            buildKey(color: Colors.yellow,playS: 3),
            buildKey(color: Colors.blue,playS: 4),
            buildKey(color: Colors.green,playS: 5),
            buildKey(color: Colors.purple,playS: 6),
            buildKey(color: Colors.deepPurple,playS: 7),
            
          ],
        )),
      ),
    );
  }
}
