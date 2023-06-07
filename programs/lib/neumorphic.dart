import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() => runApp(NeumorphicApp(home:MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: NeumorphicText(
        "I love flutter",
        style: NeumorphicStyle(
          depth: 4,  //customize depth here
          color: Colors.white, //customize color here
        ),
        textStyle: NeumorphicTextStyle(
          fontSize: 18, //customize size here
          // AND others usual text style properties (fontFamily, fontWeight, ...)
        ),
        ),
      ),
    );
  }

 

  }