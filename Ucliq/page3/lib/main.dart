import 'package:flutter/material.dart';

import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20.0)),
                  Image(
                    image: AssetImage("images/third.PNG"),
                    width: 400.0,
                    height: 200.0,
                  ),
                  Text(
                    "Verify Your Number",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                
                  Padding(padding: EdgeInsets.all(20.0)),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 8),
                    child: RichText(
                      text: TextSpan(
                          text: "Enter 6 digit verification code sent to ",
                          children: [
                            TextSpan(
                                text: "9874563210",
                                style: TextStyle(
                                    color: Colors.black,
                                    
                                    fontSize: 15)),
                          ],
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                 
                   SizedBox(
                  height: 40.0,
                ),
                PinCodeFields(
                  length: 6,
                  controller: newTextEditingController,
                  focusNode: focusNode,
                  onComplete: (result) {
                    // Your logic with code
                    print(result);
                  },
                ),
                  SizedBox(
                  height: 40.0,
                ),
              Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8),
                    child: RichText(
                      text: TextSpan(
                          text: " Incase you have not recieved it",
                          
                          // children: [
                          //   TextSpan(
                          //       text: "Resend OTP",
                          //       style: TextStyle(
                          //           color: Colors.red,
                          //           fontWeight:FontWeight.bold,
                          //           fontSize: 15)),
                          // ],
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15)),
                      textAlign: TextAlign.center,
                    ),
                    
                    
                  ),
                  Text("Resend Otp" ,
                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight:FontWeight.bold,
                                    fontSize: 15)),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          // padding: const EdgeInsets.all(8),
          margin: EdgeInsets.all(20.0),
          child: RaisedButton(
            color: Colors.red,
            padding: EdgeInsets.all(20.0),
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
