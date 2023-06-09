import 'package:flutter/material.dart';
import 'package:splashscreen/botttomnav2.dart';
import 'package:splashscreen/hotel.dart';
import 'package:splashscreen/profileui.dart';
import 'package:splashscreen/room_details.dart';
import 'package:splashscreen/tableg.dart';
import 'package:splashscreen/welcome2.dart';
import 'package:splashscreen/welocme.dart';

import 'backalert.dart';
import 'bottomnavigation.dart';
import 'bottomsheet.dart';
import 'bottomsheet2.dart';
import 'carousel slider.dart';
import 'custom_child.dart';
import 'custom_list.dart';
import 'drawer example.dart';

import 'expanded.dart';
import 'expansion tile card.dart';
import 'farmerszone.dart';
import 'googlebar.dart';
import 'grid2.dart';
import 'grid_builder.dart';
import 'grid_extent.dart';
import 'grid_with_count.dart';
import 'grid_with_custom.dart';
import 'gridview.dart';
import 'icon.dart';
import 'image_icon.dart';
import 'list_builder.dart';
import 'list_builder2.dart';
import 'list_separated.dart';
import 'listview_assignment.dart';
import 'login.dart';
import 'login_validation.dart';
import 'lottie animation.dart';
import 'newgrid.dart';
import 'slider.dart';
import 'stack.dart';
import 'stack2.dart';
import 'staggered_grid.dart';
import 'staggrd2.dart';
import 'tabbar.dart';
import 'tabbar2.dart';

void main() {
  runApp(MaterialApp(home: Tabless(),debugShowCheckedModeBanner: false,));
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
