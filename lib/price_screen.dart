import 'package:bitcoin_ticker/constants.dart';
import 'package:bitcoin_ticker/services/networking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:intl/intl.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectCurrency;

  String currency;

  int price;
  final oCcy = new NumberFormat("#,##0.00", "en_US");

  List<DropdownMenuItem<String>> getDropdownItems() {
    List<DropdownMenuItem<String>> DropdownItems = [];
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
    LoadPrice(currenciesList.first);
  }

  void LoadPrice(String curr) async {
    currency = currenciesList[0];
    String Url = UrlAPI + 'BTC/' + curr + apikey;
    NetworkHelper networkHelper = NetworkHelper(Url);
    print(Url);
    var data = await networkHelper.getData();
    setState(() {
      var priceDouble = data['rate'];
      price = priceDouble.toInt();
    });
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
            child: Column(
              children: getWidgetCoin(),
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
                    setState(() {
                      currency = currenciesList[selectedIndex];
                      LoadPrice(currency);
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

  List<Widget> getWidgetCoin() {
    List<Widget> ListCrypto = [];
    for (String coin in cryptoList) {
      ListCrypto.add(
        Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 $coin = ${price} $currency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }
    return ListCrypto;
  }
}
