import 'package:flutter/material.dart';

// ignore: camel_case_types
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
