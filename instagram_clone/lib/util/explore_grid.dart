import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Exploregrid(),
  ));
}

class Exploregrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(color: Colors.deepPurple[100],),
          );
        });
  }
}
