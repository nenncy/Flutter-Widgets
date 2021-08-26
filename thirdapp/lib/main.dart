import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: Scaffold(
        body: Center(
          child: check(),
        ),
      ),
    ));
  }
}

class check extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return impcontact();
  }
}

class impcontact extends State<check> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemBuilder:(context,index){
         return Card(
           child: ListTile(
            leading : Icon(Icons.add_alert),
             title:Text("add a alarm")
           )
         );
      }
    );
  }
}
