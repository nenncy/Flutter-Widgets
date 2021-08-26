import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: empty());
  }
}

class strlen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mystring();
  }
}

class mystring extends State<strlen> {
  String userstring = " ";
  String msg = "No value entered";
  void getval() {
    setState(() {
      msg = userstring.length.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My string"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Enter string"),
            onChanged: (value) => userstring = value,
          ),
        ),
        RaisedButton(
          onPressed: getval,
          child: Text("Check length"),
        ),
        Text(
          msg,
          style: TextStyle(color: Colors.black),
        )
      ]),
    );
  }
}

class evenodd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return userin();
  }
}

class userin extends State<evenodd> {
  String testval = " ";
  String msg = " No value";
  void getvalue() {
    if (int.parse(testval) % 2 == 0) {
      setState(() {
        msg = "even";
      });
    } else {
      setState(() {
        msg = "odd";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Even Odd"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter string"),
              onChanged: (value) => testval = value,
            ),
          ),
          RaisedButton(
            onPressed: getvalue,
            child: Text("Check length"),
          ),
          Text(
            msg,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return userlogin();
  }
}

class userlogin extends State<login> {
  String email = " ";
  String password = " ";
  String msg = " ";

  void getval() {
    if (email == "abc@com" && password == "abc") {
      setState(() {
        msg = "login successfull";
      });
    } else {
      setState(() {
        msg = "login unsuccessfull";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter email"),
              onChanged: (value) => email = value,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter password"),
              onChanged: (value) => password = value,
            ),
          ),
          RaisedButton(
            onPressed: getval,
            child: Text("submit"),
          ),
          Text(
            msg,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class empty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return emptycheck();
  }
}

class emptycheck extends State<empty> {
  String email = " ";
  String password = " ";
  String msg = " ";
  var emaill = ["ab@123", "yz222", "ty@12"];
  var pass = ["abc", "xyz", "ty"];

  void getval() {
    if (email == "" || password == "") {
      if (email == "" && password != "") {
        setState(() {
          msg = "enter email";
        });
      } else if (email != "" && password == "") {
        setState(() {
          msg = "enter password";
        });
      } else {
        setState(() {
          msg = "enter Both";
        });
      }
    } else {
      for (var i = 0; i < emaill.length; i++) {
        if (emaill[i] == email && pass[i] == password) {
          setState(() {
            msg = "login successful";
          });
          break;
        } else {
          setState(() {
            msg = "login invalid";
          });
        }
      }
      // setState(() {
      //   msg = "filled";
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("empty check"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter email"),
              onChanged: (value) => email = value,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter password"),
              onChanged: (value) => password = value,
            ),
          ),
          RaisedButton(
            onPressed: getval,
            child: Text("submit"),
          ),
          Text(
            msg,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class multilog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return multilogcheck();
  }
}

class multilogcheck extends State<empty> {
  String email = " ";
  String password = " ";
  String msg = " ";

  void getval() {
    if (email == "" || password == "") {
      if (email == "" && password != "") {
        setState(() {
          msg = "enter email";
        });
      } else if (email != "" && password == "") {
        setState(() {
          msg = "enter password";
        });
      } else {
        setState(() {
          msg = "enter Both";
        });
      }
    } else {
      setState(() {
        msg = "enter Both";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("empty check"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter email"),
              onChanged: (value) => email = value,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter password"),
              onChanged: (value) => password = value,
            ),
          ),
          RaisedButton(
            onPressed: getval,
            child: Text("submit"),
          ),
          Text(
            msg,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
