import 'package:flutter/material.dart';
import 'package:weatherapp/domain/presentation/widgets/custom_app_bar.dart';
import 'package:weatherapp/domain/presentation/widgets/weather_data.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  static const String id = 'WeatherScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 112, 183, 241),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const CustomAppBar(
          title: 'Weather',
        ),
      ),
      body: const WeatherData(),
    );
  }
}
