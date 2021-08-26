import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body:SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
             Image(
               image: AssetImage("images/three.PNG"),
               width: 400.0,
               height: 200.0,
              
             ),
             Text("Enter Mobile Number" , style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
             Text("Enter your 10 - digit number to recieve " , style: TextStyle(fontSize: 15.0 , color: Colors.grey )),
               Text("the verification code" , style: TextStyle(fontSize: 15.0 , color: Colors.grey )),
             Padding(padding: EdgeInsets.all(20.0)),
              Padding(padding: EdgeInsets.all(10.0)),
               Align(
                alignment: Alignment.topLeft,
                child:Text("Mobile Number" ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              TextField(
                decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5.0),
                   ),
                  labelText: "+ 91 987567435",
                  hintStyle: TextStyle(color:Colors.red),
                ),
                
              ),
              // Padding(padding: EdgeInsets.all(10.0)),
              //  Align(
              //   alignment: Alignment.topLeft,
              //   child:Text("Buisness or Shop Name" ),
              // ),
              // Padding(padding: EdgeInsets.all(5.0)),
              
              // TextField(
              //   decoration: InputDecoration(
              //    border: OutlineInputBorder(
              //        borderRadius: BorderRadius.circular(5.0),
              //      ),
              //     labelText: "Enter Your buisness or Shop Name",
              //     hintStyle: TextStyle(color:Colors.red),
              //   ),
                
              // ),
              //  Padding(padding: EdgeInsets.all(10.0)),
              //  Align(
              //   alignment: Alignment.topLeft,
              //   child:Text("Pincode"),
              // ),
              // Padding(padding: EdgeInsets.all(5.0)),
              
              // TextField(
              //   decoration: InputDecoration(
              //    border: OutlineInputBorder(
              //        borderRadius: BorderRadius.circular(5.0),
              //      ),
              //     labelText: "Enter Your pincode",
              //     hintStyle: TextStyle(color:Colors.red),
              //   ),
                
              // ),
           
            
                    
            
              





            ],

          ),
        ),
        bottomNavigationBar:Container(
        // padding: const EdgeInsets.all(8),
        margin: EdgeInsets.all(20.0),
        child: RaisedButton(
            color: Colors.red,
            
            padding: EdgeInsets.all(20.0),
            onPressed: () {  },
            child: Text("Get Verification Code" , style: TextStyle(color: Colors.white),),
          
        
        ),
      ),
      ),
    );
  }
}

