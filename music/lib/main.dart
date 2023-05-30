// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:main/third.dart';

import 'second.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: music_home(),
  ));
}

var img = [
  'images/portrait.jpg',
  'images/backk.jpg',
  'images/pic5.jpg',
  'images/pic6.jpg',
  'images/portrait.jpg',
  'images/pic4.jpg',
  'images/pic5.jpg',
  'images/pic6.jpg',
];

var qt1 = [
  'Rap Gangs',
  'Rap Party',
  'Hip Hop Now',
  'Rap Dizz',
  'Rap Gangs',
  'Rap Party',
  'Hip Hop Now',
  'Rap Dizz'
];

class music_home extends StatefulWidget {
  const music_home({super.key});

  @override
  State<music_home> createState() => _music_homeState();
}

class _music_homeState extends State<music_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 39),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            title: Text('Hip Hop'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 17, 20, 39),
            elevation: 0,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 2,
            ),
            // GridView
            SingleChildScrollView(
              child: Container(
                  height: 600,
                  child: GridView.builder(
                      itemCount: 8,
                      padding: const EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(img[index]))),
                          padding: const EdgeInsets.all(8),
                          // color: Colors.teal[200],
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 110, top: 9),
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 58, top: 100),
                                child: Text(
                                  qt1[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
            )
          ]))
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: bottomnav(),
      ),
    );
  }
}

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int selectd = 0;
  void onitemtappd(int index) {
    setState(() {
      selectd = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        fixedColor: Color.fromARGB(255, 220, 73, 122),
        // selectedIconTheme: IconThemeData(color: Colors.pink),
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 25, 31, 53),
        onTap: onitemtappd,
        currentIndex: selectd,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
              )),
          BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(
                Icons.explore,
              )),
          BottomNavigationBarItem(
              label: 'Saved', icon: Icon(Icons.save_rounded)),
          BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.account_circle))
        ]);
  }
}
