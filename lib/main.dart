// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fyp1/startingscreens/landing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboardingscreens/logoscreen.dart';

bool onboarding = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences isLoggedIn = await SharedPreferences.getInstance();
  onboarding = isLoggedIn.getBool('onboarding') ?? false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: onboarding ? landing() : logo(),
    );
  }
}
