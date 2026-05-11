// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'weather_model.dart';

// class WeatherService {
//   // Replace with your actual API key
//   static const String apiKey = 'd0dea538db0475a2a73338caaa1b0b5c';

//   // Default coordinates (London)
//   // static const double lat = 51.5074;
//   // static const double lon = -0.1278;

//   Future<Map<String, double>> getCoordinates(String cityName) async {
//     final geoUrl = Uri.parse(
//       'http://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=$apiKey',
//     );

//     final geoResponse = await http.get(geoUrl);

//     if (geoResponse.statusCode == 200) {
//       final geoData = jsonDecode(geoResponse.body);

//       if (geoData.isNotEmpty) {
//         return {
//           'lat': geoData[0]['lat'],
//           'lon': geoData[0]['lon'],
//         };
//       } else {
//         throw Exception('City not found');
//       }
//     } else {
//       throw Exception('Failed to get coordinates');
//     }
//   }

//   Future<Weather> fetchWeather(double lon, double lat) async {
//     final url = Uri.parse(
//       'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric',
//     );

//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse);
//     } else {
//       throw Exception('Failed to load weather data');
//     }
//   }
// }





// task 2

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather_model.dart';

class WeatherService {
  static const String apiKey = 'd0dea538db0475a2a73338caaa1b0b5c';

  // 🔹 Step 1: Get Lat/Lon from City Name
  Future<Map<String, double>> getCoordinates(String cityName) async {
    final geoUrl = Uri.parse(
      'https://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=$apiKey',
    );

    final geoResponse = await http.get(geoUrl);

    if (geoResponse.statusCode == 200) {
      final geoData = jsonDecode(geoResponse.body);

      if (geoData.isNotEmpty) {
        return {
          'lat': geoData[0]['lat'],
          'lon': geoData[0]['lon'],
        };
      } else {
        throw Exception('City not found');
      }
    } else {
      throw Exception('Failed to get coordinates');
    }
  }

  // 🔹 Step 2: Get Weather using Lat/Lon
  Future<Weather> fetchWeatherByCity(String cityName) async {
    final coords = await getCoordinates(cityName);

    final lat = coords['lat']!;
    final lon = coords['lon']!;

    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return Weather.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}