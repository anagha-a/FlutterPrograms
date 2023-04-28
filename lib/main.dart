import 'package:flutter/material.dart';
import 'package:splashscreen/welcome2.dart';
import 'package:splashscreen/welocme.dart';

import 'icon.dart';
import 'image_icon.dart';
import 'login.dart';
import 'login_validation.dart';

void main() {
  runApp(MaterialApp(home: login2(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin:Alignment.topCenter ,end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.green, Colors.yellow])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0, top: 130),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Color.fromARGB(255, 143, 54, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),prefixIcon: Icon(Icons.account_circle), hintText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),prefixIcon: Icon(Icons.password), hintText: "Password",suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text("LOGIN")),
            ),
            TextButton(onPressed: () {}, child: Text("Register Now"))
          ],
        ),
      ),
    );
  }
}
