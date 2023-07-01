import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Exploregrid(),
  ));
}

class Exploregrid extends StatelessWidget {
  List pics = [
    'assets/images/user1.png',
    'assets/images/user2.png',
    'assets/images/user3.png',
    'assets/images/user4.png',
    'assets/images/user5.jpg',
    'assets/images/user6.jpg',
    'assets/images/user7.jpg',
    'assets/images/user0.png',
    'assets/images/user3.png',
    'assets/images/user4.png',
    'assets/images/user5.jpg',
    'assets/images/user6.jpg',
    'assets/images/user7.jpg',
    'assets/images/user0.png',
    'assets/images/user3.png',
    'assets/images/user1.png',
    'assets/images/user2.png',
    'assets/images/user3.png',
    'assets/images/user4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pics.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(pics[index]), fit: BoxFit.cover)),
            ),
          );
        });
  }
}
