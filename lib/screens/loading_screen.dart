import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const String apiKey = 'c37bef379cf5cdabf6f3e9d8a7df5d52';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Position position;
  String latitude;
  String longitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

    // setState(() {
    // });
  }

  void getLocation() async {
    Location location = new Location();
    await location.getCurrentLocation();
    double longitude = location.longitude;
    double latitude = location.latitude;
    print(location.longitude);
    print(location.latitude);

    String url =
        'https://api.openweathermap.org/data/2.5/weather?lon=$longitude&lat=$latitude&appid=$apiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var response = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen();
    }));

    double name = response['main']['temp'];
    int condition = response['weather'][0]['id'];
    String CityName = response['name'];

    print(CityName);
  }

  @override
  Widget build(BuildContext context) {
    //return Scaffold(),
    return Scaffold(
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        )

      ),
    );
  }
}
