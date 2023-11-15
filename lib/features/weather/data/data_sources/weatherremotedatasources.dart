import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

// abstract class WeatherRemoteDataSources{

//   // ignore: non_constant_identifier_names
//   Future<List<WeatherModel>> getWeather();

// }
// class WeatherRemoteImp implements WeatherRemoteDataSources{
//   @override
//   Future<List<WeatherModel>> getWeather() {

//     throw UnimplementedError();
//   }

// }

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '3677bed892474b30b7a122242220806';
  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}
