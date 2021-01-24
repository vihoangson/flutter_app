import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectCurrency;

  String currency;

  List<DropdownMenuItem<String>> getDropdownItems() {
    List<DropdownMenuItem<String>> DropdownItems = [];
    // for (var i = 0; i < currenciesList.length; i++) {
    //   var newItem = DropdownMenuItem(
    //     child: Text(currenciesList[i]),
    //     value: currenciesList[i],
    //   );
    //   DropdownItems.add(newItem);
    // }
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      DropdownItems.add(newItem);
    }
    return DropdownItems;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currency = currenciesList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? $currency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: CupertinoPicker(
                  itemExtent: 32.0,
                  onSelectedItemChanged: (selectedIndex) {
                    print(currenciesList[selectedIndex]);
                    setState(() {
                      currency = currenciesList[selectedIndex];
                    });
                  },
                  children: getPickerItems())),
        ],
      ),
    );
  }

  List<Widget> getPickerItems() {
    List<Widget> PickerItems = [];
    for (String currency in currenciesList) {
      var newItem = Text(currency);
      PickerItems.add(newItem);
    }

    return PickerItems;
  }
}

// DropdownButton<String>(
// value: 'USD',
// items: getDropdownItems(),
// onChanged: (value) {
// setState(() {
// selectCurrency = value;
// });
// },
// ),
