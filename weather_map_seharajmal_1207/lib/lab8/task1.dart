// import 'package:flutter/material.dart';
// import 'weather_model.dart';
// import 'weather_service.dart';

// class task1 extends StatefulWidget {
//   const task1({super.key});

//   @override
//   State<task1> createState() => _task1State();
// }

// class _task1State extends State<task1> {
//   double lon = 0.0;
//   double lat = 0.0;

//   final WeatherService _weatherService = WeatherService();
//   late Future<Weather> _weatherFuture;

//   @override
//   void initState() {
//     super.initState();
//     _weatherFuture = _weatherService.fetchWeather(lon,lat);
//   }

//   void _refreshWeather() {
//     setState(() {
//       _weatherFuture = _weatherService.fetchWeather(lon, lat);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Current Weather'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: () => _refreshWeather(),
//           )
//         ],
//       ),
//       body: Center(
//         child: FutureBuilder<Weather>(
//           future: _weatherFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } 
//             else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } 
//             else if (snapshot.hasData) {
//               final weather = snapshot.data!;
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     decoration: const InputDecoration(
//                       labelText: 'Latitude',
//                       border: OutlineInputBorder(),
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         lon = double.tryParse(value) ?? 0.0;
//                       });
//                     }
//                   ),
//                   SizedBox(height: 10),
//                   TextField(
//                     decoration: const InputDecoration(
//                       labelText: 'Longitude',
//                       border: OutlineInputBorder(),
//                     ),
//                     onChanged: (value) { 
//                     setState(() {
//                       lat = double.tryParse(value) ?? 0.0;
//                     });
//                     }
//                   ),
//                   Text(
//                     weather.cityName,
//                     style: const TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     '${weather.temperature.toStringAsFixed(1)}°C',
//                     style: const TextStyle(fontSize: 60),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     weather.description.toUpperCase(),
//                     style: const TextStyle(
//                       fontSize: 24,
//                       color: Colors.grey
//                     ),
//                   ),
//                 ],
//               );
//             }

//             return const Text('No data available');
//           },
//         ),
//       ),
//     );
//   }
// }



// task2


// import 'package:flutter/material.dart';
// import 'weather_model.dart';
// import 'weather_service.dart';

// class task1 extends StatefulWidget {
//   const task1({super.key});

//   @override
//   State<task1> createState() => _task1State();
// }

// class _task1State extends State<task1> {
//   final WeatherService _weatherService = WeatherService();

//   late Future<Weather> _weatherFuture;
//   String cityName = "London";

//   @override
//   void initState() {
//     super.initState();
//     _weatherFuture = _weatherService.fetchWeatherByCity(cityName);
//   }

//   void _getWeather() {
//     if (cityName.isEmpty) return;

//     setState(() {
//       _weatherFuture = _weatherService.fetchWeatherByCity(cityName);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Weather App (Geocoding)'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // 🔹 City Input
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Enter City Name',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 cityName = value;
//               },
//             ),

//             const SizedBox(height: 10),

//             // 🔹 Button
//             ElevatedButton(
//               onPressed: _getWeather,
//               child: const Text("Get Weather"),
//             ),

//             const SizedBox(height: 20),

//             // 🔹 Result
//             Expanded(
//               child: Center(
//                 child: FutureBuilder<Weather>(
//                   future: _weatherFuture,
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return const CircularProgressIndicator();
//                     } 
//                     else if (snapshot.hasError) {
//                       return Text('Error: ${snapshot.error}');
//                     } 
//                     else if (snapshot.hasData) {
//                       final weather = snapshot.data!;
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             weather.cityName,
//                             style: const TextStyle(
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             '${weather.temperature.toStringAsFixed(1)}°C',
//                             style: const TextStyle(fontSize: 60),
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             weather.description.toUpperCase(),
//                             style: const TextStyle(
//                               fontSize: 24,
//                               color: Colors.grey
//                             ),
//                           ),
//                         ],
//                       );
//                     }

//                     return const Text('No data available');
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// task3

import 'package:flutter/material.dart';
import 'weather_model.dart';
import 'weather_service.dart';

class task1 extends StatefulWidget {
  const task1({super.key});

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  final WeatherService _weatherService = WeatherService();

  late Future<Weather> _weatherFuture;
  String cityName = "London";

  @override
  void initState() {
    super.initState();
    _weatherFuture = _weatherService.fetchWeatherByCity(cityName);
  }

  void _getWeather() {
    if (cityName.isEmpty) return;

    setState(() {
      _weatherFuture = _weatherService.fetchWeatherByCity(cityName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App (Geocoding)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 🔹 City Input
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter City Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                cityName = value;
              },
            ),

            const SizedBox(height: 10),

            // 🔹 Button
            ElevatedButton(
              onPressed: _getWeather,
              child: const Text("Get Weather"),
            ),

            const SizedBox(height: 20),

            // 🔹 Result
            Expanded(
              child: Center(
                child: FutureBuilder<Weather>(
                  future: _weatherFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } 
                    else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } 
                    else if (snapshot.hasData) {
                      final weather = snapshot.data!;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weather.cityName,
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          const SizedBox(height: 10),

                          // 🔥 WEATHER ICON ADDED
                          Image.network(
                            'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                            width: 100,
                            height: 100,
                          ),

                          const SizedBox(height: 10),

                          Text(
                            '${weather.temperature.toStringAsFixed(1)}°C',
                            style: const TextStyle(fontSize: 60),
                          ),

                          const SizedBox(height: 10),

                          Text(
                            weather.description.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      );
                    }

                    return const Text('No data available');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}