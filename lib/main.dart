import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/domain/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:weatherapp/domain/presentation/widgets/theme_toggle_button.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => ThemeCubit(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theme Mode',
        ),
        actions: const [ThemeToggleButton()],
      ),
    );
  }
}
