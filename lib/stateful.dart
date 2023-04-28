import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image_icon.dart';

void main() {
  runApp(MaterialApp(home: MyApp1()));
}

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>icon()));
    }
    );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyLLzqhucZTUjj--P4T849xgjJ7mL_GXApew&usqp=CAU"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello",style: TextStyle(fontSize: 50),),
            ],
          ),
        ),
      ),
    );
  }
}
