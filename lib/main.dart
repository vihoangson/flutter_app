import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_app/Question.dart';
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
  List<Icon> listScore = [];

  List<Question> listQuestions = [
    Question(q: 'Q1', a: true),
    Question(q: 'Q2', a: true),
    Question(q: 'Q3', a: false),
    Question(q: 'Q4', a: true),
    Question(q: 'Q5', a: false),
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
                      var q = Question(q: 'Question 1', a: false);
                      print(q.questionAnswer);
                    },
                    color: Colors.black,
                    child: Text(
                      listQuestions[currentQuesion].questionText,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      print('True');

                      setState(() {
                        if (currentQuesion >= listQuestions.length - 1)
                          currentQuesion = -1;
                        currentQuesion++;
                        print(currentQuesion);
                        if (listQuestions[currentQuesion].questionAnswer ==
                            true) {
                          listScore.add(Icon(Icons.check, color: Colors.green));
                        } else {
                          listScore.add(Icon(Icons.close, color: Colors.red));
                        }
                      });
                    },
                    color: Colors.green,
                    child: Text('True'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        if (currentQuesion >= listQuestions.length - 1)
                          currentQuesion = -1;
                        currentQuesion++;
                        print(currentQuesion);
                        if (listQuestions[currentQuesion].questionAnswer ==
                            false) {
                          listScore.add(Icon(Icons.check, color: Colors.green));
                        } else {
                          listScore.add(Icon(Icons.close, color: Colors.red));
                        }
                      });
                    },
                    color: Colors.red,
                    child: Text('False'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        listScore.removeAt(1);
                        listScore.removeAt(2);
                        listScore.removeAt(3);
                        listScore.removeAt(4);
                        listScore.removeAt(5);
                        listScore.removeAt(6);
                        listScore.removeAt(7);
                      });
                    },
                    color: Colors.yellow,
                    child: Text('Clear'),
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
