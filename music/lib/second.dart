// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:coverflow/coverflow.dart';

import 'main.dart';
// Ask this
// final numbers = List.generate(10, (index) => index.toString());

List<Widget> images2 = [
  Image.asset('images/pic4.jpg'),
  Image.asset('images/pic5.jpg'),
  Image.asset('images/pic6.jpg'),
  Image.asset('images/pic4.jpg'),
  Image.asset('images/pic5.jpg'),
  Image.asset('images/pic6.jpg'),
  Image.asset('images/pic5.jpg'),
  Image.asset('images/pic4.jpg'),
];

// Ask this
List<String> images3 = [
  'images/pic4.jpg',
  'images/pic5.jpg'
      'images/pic6.jpg'
      'images/pic4.jpg'
      'images/pic5.jpg'
      'images/pic6.jpg'
      'images/pic5.jpg'
      'images/pic4.jpg'
];

var qt1 = [
  'Rap Gangs',
  'Rap Party',
  'Rap Gangs',
  'Rap Dizz',
  'Rap Gangs',
  'Rap Party',
  'Hip Hop',
  'Rap Dizz'
];

final List<String> titles = [
  "Song 1",
  "Song 2",
  "Song 3",
  "Song 4",
  "Song 5",
  "Song 6",
  "Song 7",
  "Song 8",
];

class music_2 extends StatefulWidget {
  const music_2({super.key});

  @override
  State<music_2> createState() => _music_2State();
}

class _music_2State extends State<music_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 20, 39),
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 17, 20, 39),
              title: Text(
                'Find Your Best Music',
                style: TextStyle(fontSize: 25),
              ),
              toolbarHeight: 100,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              // Searchbox
              Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                      child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 26, 32, 56),
                        filled: true,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(168, 255, 255, 255)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
                ),
              ),

              // 1st line
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      Text(
                        'New Albums',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      Text(
                        'View all',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),

              // Carousel
              Container(
                height: 150,
                child: Center(
                  child: SizedBox(
                    child: CoverFlow(
                      images: images2,
                      titles: titles,
                      textStyle: TextStyle(color: Colors.white),
                      // displayOnlyCenterTitle: true,

                      // shadowOpacity: 0.3,
                      shadowOffset: Offset(3, 8),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, top: 2),
                child: Container(
                  height: 23,
                  child: Text(
                    'Recently Music',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Listview
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
                child: Container(
                    height: 300,
                    width: 600,
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    Image(
                                        width: 70,
                                        height: 80,
                                        image:
                                            AssetImage('images/pic4.jpg')),
                                    Column(
                                      children: [
                                        Text(
                                          qt1[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40, top: 8),
                                          child: Text(
                                            'Havana',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 150,
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      size: 40,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                )
                              ],
                            ),
                          );
                        })),
              )
            ]))
          ],
        )),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: bottomnav(),
        ));
  }
}
