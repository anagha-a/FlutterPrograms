import 'package:flutter/material.dart';

class grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      ),
      children: [
        Image(image: AssetImage('assets/icon/dal.jpg')),
        Image(image: AssetImage('assets/icon/hib.jpg')),
        Image(image: AssetImage('assets/icon/jas.jpg')),
        Image(image: AssetImage('assets/icon/rose.jpg')),
        Image(image: AssetImage('assets/icon/sun.jpg')),
        Image(image: AssetImage('assets/icon/white.jpg')),
        

      ],
      ),
    );
  }

}