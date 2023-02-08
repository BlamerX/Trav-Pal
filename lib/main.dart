import 'package:flutter/material.dart';
import './src/SplashScreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Theme for the App
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,

      // Title displayed at the top of the App
      title: "TravPal",
      // Home Page
      home: const SplashScreen(),
    );
  }
}
