import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: UserPosts(
    name: '',
  )));
}

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        //below the post - comment,like
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share_outlined)
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),

        //comments

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                ' Sinina',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //caption

        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.black),children: [
              TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Hey kid')
            ])))
      ],
    );
  }
}
