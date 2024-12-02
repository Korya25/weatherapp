import 'package:flutter/material.dart';
import 'package:weatherapp/domain/presentation/widgets/custom_app_bar.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  static const String id = 'WeatherScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(
          title: 'Weather',
        ),
      ),
    );
  }
}
