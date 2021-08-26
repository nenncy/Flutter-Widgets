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
  final names = ['bank', 'hospital', 'car', 'flight'];
  final icons = [
    Icons.account_balance,
    Icons.local_hospital,
    Icons.car_rental,
    Icons.flight
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context,i) {
          return Card(
            child: ListTile(
              leading: Icon(icons[i]),
              title: Text(names[i]),
            ),
          );
        });
  }
}
