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
  int genter;

  int height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: ReUseWidget(
                colour: genter == 2 ? colorMain : colorMainDeactive,
                childNode: GestureDetector(
                  onTap: () {
                    setState(() {
                      genter = 1;
                    });
                  },
                  child: childCard(
                    iconChild: FontAwesomeIcons.mars,
                    textMain: 'MALE $genter',
                  ),
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: ReUseWidget(
                colour: genter == 1 ? colorMain : colorMainDeactive,
                childNode: GestureDetector(
                  onTap: () {
                    setState(() {
                      genter = 2;
                    });
                  },
                  child: childCard(
                    iconChild: FontAwesomeIcons.venus,
                    textMain: 'FEMALE $genter',
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
                  childNode: SliderTheme(
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
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = 2;
                        });
                      },
                    ),
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
                childNode: null,
                onPress: () {},
              ),
            ),
            Expanded(
              child: ReUseWidget(
                colour: colorMain,
                childNode: null,
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
