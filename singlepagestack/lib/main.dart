import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: Scaffold(
    //   appBar:AppBar(
    //     title: Text("Stack"),
    //   ),
    home: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bac.jfif"), fit: BoxFit.fitHeight)),
        ),
        Align(
       alignment: Alignment.bottomCenter,
       child: SizedBox(
             
              width: 300,
              height: 200,
             child: Container(  
               margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                     color: Colors.red,
                  ),
                 
                ),
              
              ),
        ),
      ],
    ),
  ));
}
