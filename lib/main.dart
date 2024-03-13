import 'package:design_practicals/pages/third_design/splash_screen_002.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Practicals",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen2(),
    );
  }
}
