import 'package:flutter/material.dart';
import 'ReUseWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReUseWidget.dart';
import 'child_card.dart';
import 'constant.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

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

class _MyHomePageState extends State<InputPage> {
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
                    childNode: GestureDetector(
                      onTap: (){
                        print(1212123);
                      },
                      child: childCard(
                        iconChild: FontAwesomeIcons.mars,
                        textMain: 'MALE',
                      ),
                    ),
                    onPress: (){},
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
                      childNode: Slider(
                        value: 1,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        onChanged: (double value) {
                          // setState(() {
                          //
                          // });
                        },
                      ),
                      onPress: (){},
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
                    onPress: (){},
                  ),
                ),
                Expanded(
                  child: ReUseWidget(
                    colour: colorMain,
                    childNode: null,
                    onPress: (){},
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