// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:global_fitness/screens/bmi_screen.dart';
import 'package:global_fitness/screens/intro_screens.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/BMI': (context) => BmiScreen(),
        
      },
      initialRoute: '/',
      
    );
  }
}
