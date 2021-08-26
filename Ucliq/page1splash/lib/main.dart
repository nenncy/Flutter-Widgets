import 'package:flutter/material.dart';
import 'dart:async';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}

class splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return splashclass();
  }
}

class splashclass extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.yellowAccent,
        alignment: Alignment.center,
        child: Image(
          image: AssetImage("images/logo.png"),
          width: 300.0,
          height: 300.0,
        ));
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("HomePage"),
      // ),
      backgroundColor: Colors.yellow,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/logo.png"),
                width: 300.0,
              ),
              Text(
                "Welcome to Ucliq",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Text(
                "India's largest B2B trade network",
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Text(
                "Retailers | Traders | Wholesaler ",
                style: TextStyle(fontSize: 15.0),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                "Distributors | Manufactures | Brands ",
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.all(20.0),
        child: RaisedButton(
          color: Colors.red,
          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page2()));
          },
          child: Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
