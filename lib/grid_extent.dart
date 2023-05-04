import 'package:flutter/material.dart';

class grid_extent extends StatelessWidget{
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
    'assets/icon/blue.png',
    'assets/icon/orange.png',
    'assets/icon/red.png',
    'assets/icon/green.png',
    'assets/icon/white.png',
    'assets/icon/gold.png',
    'assets/icon/blue.png',
    'assets/icon/orange.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 60,
      children: List.generate(20, (index) {
        return Card(
          child: Image(image: AssetImage(img[index])),
        );
      }),
      ),
    );
  }

}