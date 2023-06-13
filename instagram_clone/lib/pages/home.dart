import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_stories.dart';
import 'package:instagram_clone/util/user_post.dart';

void main() {
  runApp(MaterialApp(
    home: UserHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class UserHome extends StatelessWidget {
  final List people = [
    {"name": 'Anagha', "post": "assets/images/user4.png", "pic": "assets/images/post0.jpg"},//0
    {"name": 'Sreepad', "post": "assets/images/user1.png", "pic": "assets/images/user1.png"},
    {"name": 'Abhilash', "post": "assets/images/user6.jpg", "pic": "assets/images/post3.jpg"},
    {"name": 'Amjad', "post": "assets/images/post4.jpg", "pic": "assets/images/user7.jpg"},
    {"name": 'Rafkan', "post": "assets/images/user1.png", "pic": "assets/images/user4.png"},
    {"name": 'Sajin', "post": "assets/images/user2.png", "pic": "assets/images/post1.jpg"},
    {"name": 'Aswin', "post": "assets/images/user3.png", "pic": "assets/images/post0.jpg"},
    {"name": 'Abinish', "post": "assets/images/user5.jpg", "pic": "assets/images/post3.jpg"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 32.0,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                  ImageIcon(color: Colors.black,AssetImage('assets/images/messenger.png'),size: 24)
                  // Icon(
                  //   Icons.send,
                  //   color: Colors.black,
                  // ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            //stories
            Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return BubbleStories(text: people[index]["name"], dp: people[index]["pic"],);
                    })),

            //posts

            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(
                      name: people[index]['name'],
                      postPic: people[index]['post'] ,
                      profilePic:people[index]['pic'] ,
                    );
                  }),
            )
          ],
        ));
  }
}
