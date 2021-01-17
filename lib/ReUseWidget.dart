import 'package:flutter/material.dart';

class ReUseWidget extends StatelessWidget {
  final Color colour;
  final Widget childNode;
  final Function onPress;

  ReUseWidget(
      {@required this.colour,
      @required Widget this.childNode,
      @required Function this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(1);
      },
      child: Container(
        child: childNode,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
