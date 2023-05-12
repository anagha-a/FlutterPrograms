import 'package:flutter/material.dart';


class welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.limeAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Home",style: TextStyle(fontSize: 30)),
              Image(image: AssetImage('assets/icon/wel.png'),height: 100,),
            ],
          )
        )
      )
    );
  }

}