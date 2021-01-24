import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  final String url;

  NetworkHelper(this.url);


  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var dynamic = jsonDecode(data);
      return dynamic;

      // double name = dynamic['main']['temp'];
      // int condition = dynamic['weather'][0]['id'];
      // String CityName = dynamic['name'];
      //
      // print(dynamic);
    } else {
      print(response.statusCode);
    }
  }
}
