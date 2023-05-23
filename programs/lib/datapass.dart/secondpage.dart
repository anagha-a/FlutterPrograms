import 'package:flutter/material.dart';


import 'dummydata.dart';

class Passdata2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    
    final productId = ModalRoute.of(context)?.settings.arguments;
    
    final product = dummyproducts.firstWhere((data) => data["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Products Details'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(product["image"]),
            Text("${product["id"].toString()}"),
            Text("${product["name"]}"),
            Text("${product["description"]}")
          ],
        ),

      )
      ,
    );
  }
}