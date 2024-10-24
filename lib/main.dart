import 'package:flutter/material.dart';
import 'package:little_savior/views/00_splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Little Saviors',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(254,	247,	215, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(217, 56, 72, 1)),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}