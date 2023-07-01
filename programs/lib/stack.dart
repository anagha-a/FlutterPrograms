import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class stackk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack'),),
      body: Center(
      child: Stack(
  children: <Widget>[
    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),
    Positioned(left: 200,right: 100,
    child: Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  ],
),
      ),
    );
  }

}