import 'dart:convert';

import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Position position;
  String latitude;
  String longitude;
  WeatherModel weather = WeatherModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

    // setState(() {
    // });
  }

  void getLocation() async {
    var response = await weather.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: response);
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
      )),
    );
  }
}
