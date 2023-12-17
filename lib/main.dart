import 'package:flutter/material.dart';
import 'package:weather_app/styles/custom_theme_data.dart';
import 'package:weather_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: cLightThemeData,
      darkTheme: cDarkThemeData,
      home: const HomePage(),
    );
  }
}
