import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const colorMain = Color(0xFF1D1E33);
const colorBottom = Color(0xEFEB1555);

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
        appBar: AppBar(title: Text('BMI Caculator')),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                ReUseWidget(colour: colorMain),
                ReUseWidget(colour: colorMain),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                ReUseWidget(colour: colorMain),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                ReUseWidget(colour: colorMain),
                ReUseWidget(colour: colorMain),
              ],
            )),
            Container(
              color: colorBottom,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReUseWidget extends StatelessWidget {
  Color colour;

  ReUseWidget({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
