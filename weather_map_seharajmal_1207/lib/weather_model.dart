class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final String iconCode; // Challenge 3: Store the icon ID

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.iconCode,
  });

  // Factory constructor to parse JSON
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      iconCode: json['weather'][0]['icon'], // Extracting the icon code
    );
  }
}