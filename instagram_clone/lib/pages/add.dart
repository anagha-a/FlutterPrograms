import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AddPage(),debugShowCheckedModeBanner: false,
  ));
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Text('Add'),
    );
  }
}
