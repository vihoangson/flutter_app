
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:http/http.dart'  as http;
import 'dart:math';
// The main function is the starting point for all our flutter App.
void main() {
  runApp(AppSample());
}
class AppSample extends StatefulWidget {
  @override
  _AppSampleState createState() => _AppSampleState();
}

class _AppSampleState extends State<AppSample> {
  int string = 1;

  void playSound(){
    final player = AudioCache();
    player.play('node1.wav');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: FlatButton(
            onPressed: ()async {
              setState(() {
                string = Random().nextInt(1000);
                print('string: $string');
              });
              print('ok men');
              final AudioCache player = new AudioCache();
              // player.play('audio/cello.mp3');
              var url = 'http://ttht.oop.vn/';
              var response = await  http.get(url);
              print(response);
              print(response.statusCode);
              print(response.body);

            },
            height: 100.0,
            color: Colors.white,
            child: Text('ss $string'),
          ),
        ),
      ),
    );
  }
}
