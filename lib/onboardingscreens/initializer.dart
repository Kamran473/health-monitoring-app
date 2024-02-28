import 'package:flutter/material.dart';
import 'package:fyp1/startingscreens/landing.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logoscreen.dart';

void main() {
  runApp(initializer());
}

class initializer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppLauncher(),
    );
  }
}

class AppLauncher extends StatefulWidget {
  @override
  _AppLauncherState createState() => _AppLauncherState();
}

class _AppLauncherState extends State<AppLauncher> {
  @override
  void initState() {
    super.initState();
    _checkFirstLaunch();
  }

  Future<void> _checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

    if (isFirstLaunch) {
      // Navigate to the pages you want to show only on the first launch
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => logo()),
      );
      // Set the flag to false to indicate that the app has been launched
      prefs.setBool('isFirstLaunch', false);
    } else {
      // Navigate to the main page or home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => landing()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
