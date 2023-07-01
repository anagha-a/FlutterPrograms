import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ReelsPage(),debugShowCheckedModeBanner: false,
  ));
}

class ReelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Reels'),
    );
  }
}
