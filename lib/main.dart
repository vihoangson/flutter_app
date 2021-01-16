import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mbicaculator/input_page.dart';
import 'ReUseWidget.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(title: 'Flutter Demo Home Page'),
    );
  }
}


