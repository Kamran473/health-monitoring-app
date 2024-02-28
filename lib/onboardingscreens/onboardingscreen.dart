import 'package:flutter/material.dart';
import 'package:fyp1/onboardingscreens/input.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(159, 209, 246, 100),
                Color.fromRGBO(43, 105, 163, 1)
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 201,
              ),
              Container(
                child: Image.asset('images/welcome.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  'Welcome to BIOOS',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'Dicover a new way to health',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: 220),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Input()),
                  );
                },
                child: Text(
                  'Let\'s Begin',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(330, 50),
                    backgroundColor: Color.fromRGBO(63, 90, 158, 100)),
              )
            ],
          )),
    );
  }
}
