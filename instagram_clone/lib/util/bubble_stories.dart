import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BubbleStories(text: '',),debugShowCheckedModeBanner: false,
  ));
}

class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          ),
          SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}
