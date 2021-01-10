import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:http/http.dart' as http;
import 'package:cupertino_icons/cupertino_icons.dart';
// The main function is the starting point for all our flutter App.
void main() {
  runApp(Quizzler());
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> listScore = [
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.check,color:Colors.cyan),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.check,color:Colors.cyan),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.check,color:Colors.cyan),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.check,color:Colors.cyan),
    Icon(Icons.close,color:Colors.red),
    Icon(Icons.close,color:Colors.red),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Ok');
                },
                color: Colors.red,
                child: Text('Ok'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Ok');
                },
                color: Colors.green,
                child: Text('Ok'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Ok');
                },
                color: Colors.green,
                child: Text('Ok'),
              ),
            ),
            Expanded(
              child: Row(
                children: listScore,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
