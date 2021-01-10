
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:http/http.dart'  as http;
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
          child: FlatButton(
            onPressed: ()async {
              print('ok men');
              // final AudioCache player = new AudioCache();
              // player.play('audio/cello.mp3');
              var url = 'http://ttht.oop.vn/';
              var response = await  http.get(url);
              print(response);
              print(response.statusCode);
              print(response.body);

            },
            height: 100.0,
            color: Colors.white,
            child: Text('cello'),
          ),
        ),
      ),
    );
  }
}
