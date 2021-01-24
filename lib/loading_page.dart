
import 'package:bitcoin_ticker/price_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //
    redirectPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Loading ... '),
        ),
        body: Column(
          children: [
            Center(
              child: Text('Loading'),
            ),
            FlatButton(
                onPressed: () {

                },
                child: Text(
                  'Loading',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ));
  }

  void redirectPage() async{
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PriceScreen();
    }));
  }
}
