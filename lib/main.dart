import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: AppBar(title: Text('BMI Calculator')),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseWidget(
                    colour: colorMain,
                    childNode: childCard(
                      iconChild: FontAwesomeIcons.mars,
                      textMain: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseWidget(
                    colour: colorMain,
                    childNode: childCard(
                      iconChild: FontAwesomeIcons.venus,
                      textMain: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('tab');
                    },
                    child: ReUseWidget(
                      colour: colorMain,
                      childNode: childCard(
                        iconChild: FontAwesomeIcons.file,
                        textMain: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseWidget(
                    colour: colorMain,
                    childNode: null,
                  ),
                ),
                Expanded(
                  child: ReUseWidget(
                    colour: colorMain,
                    childNode: null,
                  ),
                ),
              ],
            )),
            Expanded(
              child: Container(
                color: colorBottom,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              ),
            )
          ],
        ));
  }
}

class childCard extends StatelessWidget {
  final IconData iconChild;
  final String textMain;

  childCard({@required this.iconChild, @required this.textMain});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconChild, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textMain,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReUseWidget extends StatelessWidget {
  Color colour;
  Widget childNode;

  ReUseWidget({@required this.colour, @required Widget this.childNode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: childNode,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
