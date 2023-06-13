import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AccountTab(),
  ));
}

class AccountTab extends StatelessWidget {
  final List<String> userPosts=['assets/images/user1.png','assets/images/user2.png','assets/images/user3.png'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: userPosts.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(userPosts[index]),fit: BoxFit.cover)),
            ),
          );
        });
  }
}
