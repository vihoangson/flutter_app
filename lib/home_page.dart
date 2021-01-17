import 'package:flutter/material.dart';
import 'ReUseWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'child_card.dart';
import 'constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int genter = 1;
  int weight = 40;
  int age = 15;
  double height = 17.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: ReUseWidget(
                colour: genter == 1 ? colorMainDeactive : colorMain,
                childNode: GestureDetector(
                  onTap: () {
                    setState(() {
                      genter = 1;
                    });
                  },
                  child: childCard(
                    iconChild: FontAwesomeIcons.mars,
                    textMain: 'MALE',
                  ),
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: ReUseWidget(
                colour: genter == 2 ? colorMainDeactive : colorMain,
                childNode: GestureDetector(
                  onTap: () {
                    setState(() {
                      genter = 2;
                    });
                  },
                  child: childCard(
                    iconChild: FontAwesomeIcons.venus,
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
              child: GestureDetector(
                onTap: () {
                  print('tab');
                },
                child: ReUseWidget(
                  colour: colorMain,
                  childNode: Column(
                    children: [
                      Text('$height CM'),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: 121,
                          min: 30.0,
                          max: 250.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  onPress: () {},
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
                childNode: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight'),
                    Text('$weight kg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor:Color(0xFF4C4F5E),
                          onPressed: () {
                            setState(() {
                              weight++;
                            });

                          },
                          child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                        ),

                        FloatingActionButton(
                          backgroundColor:Color(0xFF4C4F5E),
                          onPressed: () {
                            setState(() {
                              weight--;
                            });

                          },
                          child: Icon(FontAwesomeIcons.minus,color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: ReUseWidget(
                colour: colorMain,
                childNode: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE'),
                    Text('$age'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor:Color(0xFF4C4F5E),
                          onPressed: () {
                            setState(() {
                              age++;
                            });

                          },
                          child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                        ),

                        FloatingActionButton(
                          backgroundColor:Color(0xFF4C4F5E),
                          onPressed: () {
                            setState(() {
                              age--;
                            });

                          },
                          child: Icon(FontAwesomeIcons.minus,color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                onPress: () {},
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
    );
  }
}
