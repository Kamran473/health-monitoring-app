import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fyp1/startingscreens/forgetpass1.dart';
import 'package:fyp1/startingscreens/landing.dart';
import 'package:fyp1/startingscreens/register.dart';

class signin extends StatefulWidget {
  const signin({
    super.key,
  });

  @override
  State<signin> createState() => _MyHomePageState();
}

bool obsecure = true;
bool isChecked = false;

class _MyHomePageState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/login111.png',
                  ),
                  fit: BoxFit.cover),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                /* mainAxisAlignment: MainAxisAlignment.end */ children: [
                  /// first container
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.blue,
                          /* borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(170)), */
                          /*  image: DecorationImage(
                                image: AssetImage(
                                  'images/ss (1).png',
                                ),
                                fit: BoxFit.cover) */
                          ),
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width * 0.90,
                      //padding: EdgeInsets.symmetric(vertical: 50),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.05,
                        ),
                        child: Column(
                          children: [
                            Column(children: [
                              Text.rich(
                                textAlign: TextAlign.justify,
                                TextSpan(
                                  text: 'Welcome\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.045,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'By signing in you are agreeing to\n',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(94, 94, 94, 1),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.016,
                                            fontWeight: FontWeight.bold)),
                                    // can add more TextSpans here...
                                    TextSpan(
                                        text: 'our ',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(94, 94, 94, 1),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.016,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'terms and policy',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.016,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {})
                                  ],
                                ),
                              ),
                            ]),
                            Padding(
                                padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02,
                            )),
                            TextFormField(
                              autofocus: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  iconColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height * 0.01,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  hintText: "Email Address",
                                  suffixIcon: Icon(Icons.mail)),
                              validator: ((value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter some text";
                                }

                                if (!value.contains("@")) {
                                  return "Please enter correct format of email";
                                }
                                return null;
                              }),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                            )),
                            TextFormField(
                                autofocus: true,
                                obscureText: obsecure,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  iconColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height * 0.01,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      obsecure = !obsecure;
                                      setState(() {});
                                    },
                                    child: Icon(obsecure
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  hintText: "Password",
                                ),
                                validator: ((value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your password";
                                  }

                                  if (value.length < 8 || value.length > 20) {
                                    return "Length of password should be atleast 8 characters long";
                                  }
                                  return null;
                                })),
                            CheckboxListTile(
                              title: const Text('Remember me'),
                              autofocus: false,
                              activeColor: Colors.grey,
                              checkColor: Colors.white,
                              selected: isChecked,
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //sizedbox(height:90),
                  // second container
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.15,
                      left: MediaQuery.of(context).size.width * 0.08,
                      right: MediaQuery.of(context).size.width * 0.08,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => landing()),
                                );
                              },
                              onLongPress: () {},
                              onFocusChange: (value) {},
                              onHover: (value) {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.25,
                                    MediaQuery.of(context).size.height * 0.05),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.05),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MediaQuery.of(context).size.height *
                                              0.05)),
                                ),
                              ),
                              child: const Text('Login'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => register()),
                                );
                              },
                              onLongPress: () {},
                              onFocusChange: (value) {},
                              onHover: (value) {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blue,
                                backgroundColor: Colors.white,
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.25,
                                    MediaQuery.of(context).size.height * 0.05),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.05),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MediaQuery.of(context).size.height *
                                              0.05)),
                                ),
                              ),
                              child: const Text('Register'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05),
                          child: Row(
                            children: [
                              Text(
                                "Dont remember your password? ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02),
                              ),
                              TextButton(
                                child: Text("Click here",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgetPass1()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          " Login with touch id ",
                          style: TextStyle(color: Color.fromARGB(190, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.072,
                          width: MediaQuery.of(context).size.height * 0.072,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          child: IconButton(
                            icon: const Icon(Icons.fingerprint_outlined),
                            iconSize:
                                MediaQuery.of(context).size.height * 0.045,
                            color: Colors.white,
                            tooltip: 'IconButton',
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  //color: Colors.red,
                  /* CustomPaint(
                  size: Size(
                      300,
                      (300 * 0.625)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ), */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
