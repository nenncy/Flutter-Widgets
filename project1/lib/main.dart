import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return menupage();
  }
}

// ignore: camel_case_types
class menupage extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Project 1"),
        ),
        body: Wrap(
          spacing: 2.0,
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'R',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Reat js"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Game Devlopment"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("React js"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'N',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: Text("Node"),
              backgroundColor: Colors.yellow,
            ),
            ActionChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: const Text('AB'),
                ),
                label: const Text('Aaron Burr'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> sfwidget()));
                })
          ],
        ));
  }
}

class sfwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return first();
  }
}

class first extends State<sfwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("first slide page"),
      ),
      body: Center(
        child: Text("first slide clicked!"),
      ),
    );
  }
}
