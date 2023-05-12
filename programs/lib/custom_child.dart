import 'package:flutter/material.dart';

class list_dele extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list delgate'),),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        const Card(
          child: Text('Data1'),
        ),
        const Card(
          child: Text('Data2'),
        ),
        const Card(
          child: Text('Data3'),
        ),
        const Card(
          child: Text('Data4'),
        ),
      ])),
    );
  }

}