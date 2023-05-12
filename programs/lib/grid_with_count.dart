import 'package:flutter/material.dart';

class grid_count extends StatelessWidget {
  var img = [
    'assets/icon/red.png',
    'assets/icon/green.png',
    'assets/icon/white.png',
    'assets/icon/gold.png',
    'assets/icon/blue.png',
    'assets/icon/orange.png',
    'assets/icon/red.png',
    'assets/icon/green.png',
    'assets/icon/white.png',
    'assets/icon/gold.png',
    'assets/icon/blue.png',
    'assets/icon/orange.png',
  ];
  var colors = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.yellow,
    Colors.grey,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(12, (index) {
          return Card(color: colors[index],
            child: Image(image: AssetImage(img[index])),
          );
        }),
      ),
    );
  }
}
