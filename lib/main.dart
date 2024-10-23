import 'package:flutter/material.dart';
import 'package:little_savior/views/home_view.dart';
import 'package:little_savior/views/splash_view.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}