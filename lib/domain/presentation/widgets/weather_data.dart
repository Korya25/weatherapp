import 'package:flutter/material.dart';
import 'package:weatherapp/domain/presentation/widgets/weather_data_card.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: WeaatherDataCard());
  }
}
