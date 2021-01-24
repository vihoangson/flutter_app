import 'location.dart';
import 'networking.dart';

class WeatherModel {
  String apiKey = 'c37bef379cf5cdabf6f3e9d8a7df5d52';

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentLocation();
    double longitude = location.longitude;
    double latitude = location.latitude;

    String url =
        'https://api.openweathermap.org/data/2.5/weather?lon=$longitude&lat=$latitude&appid=$apiKey&unit=Celsius';
    NetworkHelper networkHelper = NetworkHelper(url);
    var response = await networkHelper.getData();
    return response;
  }
}
