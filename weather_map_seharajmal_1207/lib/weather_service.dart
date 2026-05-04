
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather_model.dart';

class WeatherService {
  static const String apiKey = 'c938e633c1fb042c5c42876bb4707966';

  /// Challenge 2: Geocoding API
  /// Converts a city name (e.g., "London") into Latitude and Longitude
  Future<Map<String, double>> getCoordinates(String cityName) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=$apiKey');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        return {
          'lat': data[0]['lat'].toDouble(),
          'lon': data[0]['lon'].toDouble(),
        };
      } else {
        throw Exception('City not found. Please try another name.');
      }
    } else {
      throw Exception('Failed to fetch location coordinates.');
    }
  }

  /// Fetches weather data using Latitude and Longitude
  Future<Weather> fetchWeather(double lat, double lon) async {
    // units=metric ensures temperature is in Celsius
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return Weather.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load weather data: ${response.statusCode}');
    }
  }
}