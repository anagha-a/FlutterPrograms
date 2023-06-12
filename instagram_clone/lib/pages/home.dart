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
    'Anagha',
    'Sreepad',
    'Abhilash',
    'Amjad',
    'Rafkan',
    'Sajin',
    'Abhishek',
    'Abinish'
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
                    fontFamily: 'Billabong.ttf',
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
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
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
                      return BubbleStories(text: people[index]);
                    })),

            //posts

            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(name: people[index]);
                  }),
            )
          ],
        ));
  }
}
