import 'package:flutter/material.dart';


import 'dummydata.dart';
import 'secondpage.dart';

void main() {
  runApp( MaterialApp(
    home: PassDatas(),
    routes: {
      "secondone" : (context) => Passdata2(),
    },
  ));
}

class PassDatas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: dummyproducts.map((product) {
          return TextButton(
              onPressed: () => gotonext(context, product['id']),
              child: Text("${product['name']}"));
        }).toList(),
      ),
    );
  }
  void gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondone", arguments: product);
  }
}

