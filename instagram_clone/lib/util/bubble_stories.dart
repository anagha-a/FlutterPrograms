import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BubbleStories(text: '', dp: '',),debugShowCheckedModeBanner: false,
  ));
}

class BubbleStories extends StatelessWidget {
  final String text;
  final String dp;
  BubbleStories({required this.text, required this.dp});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage(dp))),
          ),
          SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}
