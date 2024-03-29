import 'package:flutter/material.dart';
import 'package:fyp1/sleep/sleep1.dart';
import 'package:fyp1/sleep/sleep3.dart';
import 'package:fyp1/sleep/sleep4.dart';
import 'package:fyp1/startingscreens/landing.dart';

class selectpagesleep extends StatelessWidget {
  const selectpagesleep({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const selectpagesleepstate(title: ''),
    );
  }
}

class selectpagesleepstate extends StatefulWidget {
  const selectpagesleepstate({super.key, required this.title});

  final String title;

  @override
  State<selectpagesleepstate> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<selectpagesleepstate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => landing()),
              );
            },
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sleep1()),
                      );
                      ;
                    },
                    child: Container(
                      height: 175,
                      width: 370,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(224, 114, 183, 243),
                            Color.fromRGBO(0, 106, 206, 100)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Center(
                          child: Text(
                        'Select Sleep Time',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 27),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 40),
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(63, 90, 158, 1)),
                    child: Center(
                        child: Text(
                      '1',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sleep3()),
                      );
                    },
                    child: Container(
                      height: 175,
                      width: 370,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(224, 114, 183, 243),
                            Color.fromRGBO(0, 106, 206, 100)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Center(
                          child: Text(
                        'Recent Average Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 27),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(63, 90, 158, 1)),
                    child: Center(
                        child: Text(
                      '2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sleep4()),
                      );
                      ;
                    },
                    child: Container(
                      height: 175,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(224, 114, 183, 243),
                            Color.fromRGBO(0, 106, 206, 100)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Sleep Record',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 27),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(63, 90, 158, 1)),
                    child: Center(
                        child: Text(
                      '3',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
