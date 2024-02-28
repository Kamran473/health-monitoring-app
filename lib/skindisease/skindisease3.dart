import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fyp1/skindisease/skindisease2.dart';
import 'package:fyp1/skindisease/skindisease4.dart';

class skindisease3 extends StatefulWidget {
  final XFile capturedImagePath;

  skindisease3({required this.capturedImagePath});
  @override
  State<StatefulWidget> createState() => skindisease3state();
}

class skindisease3state extends State<skindisease3> {
  @override
  Widget build(BuildContext context) {
    print(widget.capturedImagePath.path);

    return Scaffold(
        backgroundColor: Color.fromARGB(228, 255, 255, 255),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  /// first text
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: MediaQuery.of(context).size.width * 0.26),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        "Disease deteced",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ),
                  ),
                  /////////////////// pictures
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.07,
                            top: MediaQuery.of(context).size.height * 0.004),
                        child: Container(
                          //alignment: Alignment.centerRight,
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage('images/sd1.png'),
                                fit: BoxFit.cover
                                // alignment: Alignment.centerRight,
                                ),
                          ),
                          child:
                              Image.file(File(widget.capturedImagePath.path)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.045,
                            top: MediaQuery.of(context).size.height * 0.004),
                        child: Container(
                          //alignment: Alignment.centerRight,
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage('images/sd2.png'),
                                fit: BoxFit.cover
                                // alignment: Alignment.centerRight,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ////////////////// second text
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.013),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Text(
                          "Scanned image",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.27),
                        Text("Possible disease",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  //////////// third text
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.53,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment(
                                  -0.1455439329147339, 0.13629785180091858),
                              end: Alignment(
                                  0.702239453792572, 0.15669594705104828),
                              colors: [
                                Color.fromRGBO(149, 202, 242, 1),
                                Color.fromRGBO(99, 182, 255, 1)
                              ]),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03,
                                right: MediaQuery.of(context).size.width * 0.45,
                              ),
                              child: Text(
                                "Overview",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  //////// buttons
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.018,
                        left: MediaQuery.of(context).size.width * 0.08),
                    child: Row(
                      children: [
                        // first button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                              Icons.person), //icon data for elevated button
                          label: Text("Share"), //label text
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.4,
                                MediaQuery.of(context).size.height * 0.07),
                            padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.height * 0.08,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.height * 0.05)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        // second button
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mapscreen()),
                            );
                          },
                          icon: Icon(Icons
                              .local_hospital), //icon data for elevated button
                          label: Text("Nearby clinics"), //label text
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.07,
                                MediaQuery.of(context).size.height * 0.07),
                            /* padding: EdgeInsets.symmetric(
                                 horizontal: MediaQuery.of(context).size.height * 0.01), */
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.height * 0.05)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.055),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: MediaQuery.of(context).size.height * 0.04,
                  ),
                  onPressed: () async {
                    final cameras = await availableCameras();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CameraScreen(cameras: cameras)),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
