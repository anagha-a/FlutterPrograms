import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AccountTab(),
  ));
}

class AccountTab extends StatelessWidget {
  final List<String> userPosts=[];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              color: Colors.pink,
            ),
          );
        });
  }
}
