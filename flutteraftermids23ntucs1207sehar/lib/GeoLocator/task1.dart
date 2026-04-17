import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationScreen(),
    );
  }
}

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  String latitude = "Click on the button below";
  String longitude = "Click on the button below";

  void getCurrentPos() async {

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        print("Permission denied");
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );


    setState(() {
      latitude = position.latitude.toString();
      longitude = position.longitude.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geolocation App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Latitude: $latitude"),
            SizedBox(height: 10),
            Text("Longitude: $longitude"),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: getCurrentPos,
              child: Text("Get Location"),
            ),
          ],
        ),
      ),
    );
  }
}