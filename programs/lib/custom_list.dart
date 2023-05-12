import 'package:flutter/material.dart';

class cust_list extends StatelessWidget{
  var a=['a','b','c','d'];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Custom List')),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(
          child: Text(a[index]),
        );

      },childCount: a.length),
      )
    );
  }

}