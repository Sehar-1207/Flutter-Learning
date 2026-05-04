import 'package:flutter/material.dart';
import 'weather_model.dart';
import 'weather_service.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Lab',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WeatherHomePage(),
    );
  }
}



class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  final WeatherService _service = WeatherService();
  final TextEditingController _cityController = TextEditingController();
  
  Weather? _weather;
  bool _isLoading = false;
  String _errorMessage = '';

  void _searchWeather() async {
    if (_cityController.text.isEmpty) return;

    setState(() {
      _isLoading = true;
      _errorMessage = '';
      _weather = null;
    });

    try {
      // Step 1: Get coordinates from city name (Challenge 2)
      final coords = await _service.getCoordinates(_cityController.text);
      
      // Step 2: Get weather from coordinates
      final weather = await _service.fetchWeather(coords['lat']!, coords['lon']!);

      setState(() {
        _weather = weather;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SkyWatch Weather")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Challenge 1: Dynamic Input
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchWeather,
                ),
                border: const OutlineInputBorder(),
              ),
              onSubmitted: (_) => _searchWeather(),
            ),
            const SizedBox(height: 30),
            
            if (_isLoading) const CircularProgressIndicator(),
            
            if (_errorMessage.isNotEmpty)
              Text(_errorMessage, style: const TextStyle(color: Colors.red)),

            if (_weather != null) ...[
              Text(
                _weather!.cityName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              // Challenge 3: Official Weather Icon
              Image.network(
                'https://openweathermap.org/img/wn/${_weather!.iconCode}@2x.png',
                scale: 0.8,
              ),
              Text(
                '${_weather!.temperature.toStringAsFixed(1)}°C',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                _weather!.description.toUpperCase(),
                style: const TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
              ),
            ],
          ],
        ),
      ),
    );
  }
}