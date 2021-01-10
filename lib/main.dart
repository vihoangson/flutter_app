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

  List<String> listQuestions =[
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Question 9',

  ];

  int currentQuesion = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Ok');
                },
                color: Colors.black,
                child: Text(listQuestions[currentQuesion],
                  style: TextStyle(
                    color:Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Ok');

                  setState(() {
                    if(currentQuesion >= listQuestions.length-1)
                      currentQuesion = -1;
                    currentQuesion++;
                    print(currentQuesion);
                  });

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
                color: Colors.red,
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
