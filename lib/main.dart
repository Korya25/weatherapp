import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/domain/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:weatherapp/domain/presentation/screens/search_screen.dart';
import 'package:weatherapp/domain/presentation/screens/weather_screen.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => ThemeCubit(),
    )
  ], child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData.dark(),
          darkTheme: ThemeData.light(),
          themeMode:
              state == ThemeState.light ? ThemeMode.light : ThemeMode.dark,
          routes: {
            WeatherScreen.id: (context) => WeatherScreen(),
            SearchScreen.id: (context) => SearchScreen(),
          },
          initialRoute: WeatherScreen.id,
        );
      },
    );
  }
}
