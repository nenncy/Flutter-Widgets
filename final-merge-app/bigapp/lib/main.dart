import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homepage();
  }
}

class homepage extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/circle.png",
      "assets/images/rupee.png",
      "assets/images/sadFace.png",
      "assets/images/circle.png",
      "assets/images/circle.png",
      "assets/images/circle.png",
      "assets/images/rupee.png",
      "assets/images/sadFace.png",
    ];
    final name = ['one', 'two', 'three', 'four','one', 'two', 'three', 'four','one', 'two', 'three', 'four'];
    // TODO: implement build
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.calendar_today), text: "Events"),
                Tab(icon: Icon(Icons.check), text: "Task"),
                Tab(icon: Icon(Icons.list), text: "Data"),
                Tab(icon: Icon(Icons.card_travel), text: "Purchase"),
                Tab(icon: Icon(Icons.call), text: "Call"),
              ],
            ),
            title: Text("BigApp"),
          ),
          body: TabBarView(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 380.0,
                        height: 200.0,
                        color: Colors.amberAccent,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sfwidget()));
                          },
                        ),
                      ),
                      Container(
                        width: 380.0,
                        height: 200.0,
                        color: Colors.brown,
                        child: Center(
                          child: Text("second!"),
                        ),
                      ),
                      Container(
                        width: 380.0,
                        height: 200.0,
                        color: Colors.lightGreen,
                        child: Image.network(
                            "https://media.istockphoto.com/vectors/mega-sale-concept-horizontal-banner-template-design-discount-abstract-vector-id1198830919?k=6&m=1198830919&s=170667a&w=0&h=qDJYgRKoQLzG-TWwMYa_6xPBGkNfzO6VaPh8pDrwXBE="),
                      ),
                      Container(
                          width: 380.0,
                          height: 200.0,
                          color: Colors.lightGreen,
                          child: Image.asset('assets/banner.jpg')),
                      Container(
                        width: 380.0,
                        height: 200.0,
                        color: Colors.yellowAccent,
                        child: Material(
                          color: Colors.orange,
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {
                              Fluttertoast.showToast(
                                msg: "Container clicked! red and yellow",
                                toastLength: Toast.LENGTH_SHORT,
                                backgroundColor: Colors.red,
                                gravity: ToastGravity.CENTER,
                                // textColor: Colors.red,
                                // fontSize: 15.0
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.red,
              ),
              Container(
                child: GridView.count(crossAxisCount: 3, children: [
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.red,
                  )),
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.green,
                  )),
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.cyan,
                  )),
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.cyan,
                  )),
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.cyan,
                  )),
                  GridTile(
                      child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 200.0,
                    width: 300.0,
                    color: Colors.red,
                  )),
                ]),
                color: Colors.purple,
              ),
              Container(
                child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(150, (index) {
                      return Container(
                        child: Card(
                          color: Colors.yellowAccent,
                          child: Center(
                            child: Text('$index'),
                          ),
                        ),
                      );
                    })),
                color: Colors.blue,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisExtent: 150.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Container(
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover))));
                      }),
                  // color: Colors.deepOrange,
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    GridTile(
                        child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 200.0,
                      width: 200.0,
                      color: Colors.white,
                    )),
                    Mywidget(),
                    Mywidget(),
                    GridTile(
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        height: 200.0,
                        width: 200.0,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(child: popupmenu(), right: 35.0, top: 1)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                color: Colors.greenAccent,
              ),
              Container(
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.new_label),
                        title: Text(name[index]),
                      ),
                    );
                  },
                ),
                color: Colors.cyan,
              ),
            ],
          ),
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

Widget Mywidget() {
  return GridTile(
      child: Container(
    margin: EdgeInsets.all(5.0),
    height: 200.0,
    width: 100.0,
    color: Colors.white,
  ));
}

Widget popupmenu() {
  return PopupMenuButton(
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Row(
          children: [Icon(Icons.call), Text("Call Now")],
        ),
      ),
      PopupMenuItem(
        value: 2,
        child: Row(
          children: [Icon(Icons.pageview), Text("View profile")],
        ),
      )
    ],
  );
}
