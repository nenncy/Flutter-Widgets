import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homenavigation();
  }
}

class homenavigation extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Homepage"),
              Tab(icon: Icon(Icons.home), text: "Homepage"),
              Tab(icon: Icon(Icons.home), text: "Homepage"),
            ],
          ),
          title: Text("Tab Bar"),
        ),
        body: TabBarView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Text("first" ,style: TextStyle(color: Colors.white), textAlign:TextAlign.center,),
                      color: Colors.orange,
                      height: 300.0,
                      width: 200.0,
                    ),
                    Container(
                       child: Text("second",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                      height: 300.0,
                      width: 200.0,
                    ),
                    Container(
                       child: Text("third",style: TextStyle(color: Colors.white),),
                      color: Colors.deepPurple,
                      height: 300.0,
                      width: 200.0,
                    ),
                  ],
                ),
              ),
            ),
           Container(
               child: ListView(
                      children:[
                        Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      ),Card(
                        child: ListTile(
                          leading: Icon(Icons.ac_unit),
                          title: Text("account"),
                        ),
                      )

                      ],
                    ),
              ),
            
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
