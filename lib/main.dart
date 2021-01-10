import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:http/http.dart' as http;
import 'SoundAnime.dart';

SoundAnime soundAnime = SoundAnime();
// The main function is the starting point for all our flutter App.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(children: <Widget>[
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  AudioCache player = AudioCache();
                  player.play(soundAnime.files_url[0]);
                },
                child: Text('sound 1')),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  AudioCache player = AudioCache();
                  player.play(soundAnime.files_url[1]);
                },
                child: Text('sound 2')),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  AudioCache player = AudioCache();
                  player.play(soundAnime.files_url[2]);
                },
                child: Text('sound 3')),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  AudioCache player = AudioCache();
                  player.play(soundAnime.files_url[3]);
                },
                child: Text('sound 4')),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  AudioCache player = AudioCache();
                  player.play(soundAnime.files_url[4]);
                },
                child: Text('sound 5')),
          ]),
        ),
      ),
    );
  }
}
