import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/splash.dart';
import 'package:portfolio/components/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: const SplashScreen(), 
        nextScreen: const MyHomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
        duration: 1500,
        ),
    );
  }
}


