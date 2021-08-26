import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mainpage();
  }
}

class mainpage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              shape: BoxShape.circle,
              image: DecorationImage(
               image: AssetImage("assets/images/circle.png"),
              fit:BoxFit.cover

              )
             
            ),
          ),
          Text("Title")
        ],
      ),
    );
  }
}
