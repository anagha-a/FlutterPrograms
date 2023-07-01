import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: UserPosts(
    name: '', postPic: '', profilePic: '',
  )));
}

class UserPosts extends StatelessWidget {
  final String name;
  final String profilePic;
  final String postPic;
  const UserPosts({super.key, required this.name, required this.profilePic, required this.postPic});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                Row(children: [
                    Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(profilePic),fit: BoxFit.cover),
                        shape: BoxShape.circle),
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
                ],),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(postPic),fit: BoxFit.cover)),
          height: 300,
         
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
                    child: ImageIcon(color: Colors.black,AssetImage('assets/images/chat.png'),size: 24,),
                  ),
                  ImageIcon(color: Colors.black,AssetImage('assets/images/send.png'),size: 24,)
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
              TextSpan(text: ' Hey kid')
            ])))
      ],
    );
  }
}
