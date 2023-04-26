import 'package:flutter/material.dart';
import 'package:splashscreen/welcome2.dart';
import 'package:splashscreen/welocme.dart';

import 'icon.dart';
import 'image_icon.dart';

void main(){
  runApp(MaterialApp(home: SplashPage()));

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App"),
      ),
      body: Container(child: Column(children: [
        Padding(padding: const EdgeInsets.only(bottom: 25.0,top: 130),
        child: Text("LOGIN",style: TextStyle(color: Color.fromARGB(255, 143, 54, 244),fontSize: 20,fontWeight: FontWeight.bold),),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:"Username"),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:"Password"),),
        ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
        TextButton(onPressed: (){}, child: Text("Register Now"))
      ],),),
    );
  }

}