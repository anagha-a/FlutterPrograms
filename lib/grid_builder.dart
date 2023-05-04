import 'package:flutter/material.dart';

class grid_build extends StatelessWidget {
  var img = [
    'assets/icon/1.jpg',
    'assets/icon/2.jpg',
    'assets/icon/3.jpg',
    'assets/icon/4.jpg',
    'assets/icon/jas.jpg',
    'assets/icon/rose.jpg',
    'assets/icon/sun.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid builder'),
      ),
      body: GridView.builder(itemCount: img.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(img[index]),
            );
          }),
    );
  }
}
