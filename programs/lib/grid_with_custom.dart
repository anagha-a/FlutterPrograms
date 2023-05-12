import 'package:flutter/material.dart';

class grid_custom extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildBuilderDelegate((context,index){
            return Container(
              child: ListView(
                children: [
                  Text('Heeeya'),
                  Image(image: AssetImage(img[index])),
                ],
              ),
            );

          },
          childCount: img.length,
          ),
      ),
    );
  }
}
