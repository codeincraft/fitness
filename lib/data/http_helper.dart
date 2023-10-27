
import 'package:global_fitness/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper{
  // http://api.openweathermap.org/data/2.5/weather?q=London&appid=41e8ecbd4349f4bf72e3ec8d31ff3f07

final String authority = 'api.openweathermap.org';
final String path = 'data/2.5/weather';
final String apiKey = '41e8ecbd4349f4bf72e3ec8d31ff3f07';

Future<Weather> getWeather(String location) async {
  Map<String, dynamic> parameters = { 'q': location, 'appId': apiKey};
  Uri uri = Uri.https(authority, path, parameters);
  http.Response result = await http.get(uri);
  Map<String, dynamic> data = json.decode(result.body);
  Weather weather = Weather.fromJson(data);

  return weather;
}
}
