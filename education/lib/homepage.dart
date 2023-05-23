import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Home Page',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Choose your course ',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'right away',
                        style: TextStyle(color: Colors.green, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.notifications, color: Colors.green),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(108, 187, 184, 184),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'Search for your course',
                          prefixIcon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Category'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.green,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Live Class')
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.orange,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxeZ5kegZIbE6QQ85uD74xBL9ib4QIXrP0dg&usqp=CAU'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Free Course')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYjzeepLqqwQDoHvOB-aTQ5d-uZ9-HWdJ1mw&usqp=CAU'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Bookstore')
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.red,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Live Course')
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.green,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoHoKxjRXexcv-TOAerdTyRW4xd8gjgFNTGw&usqp=CAU'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Leaderboard')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Row(
                children: [
                  Text('Recommended Courses',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              )),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'you may also like',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.motion_photos_auto_outlined,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Material(
                    elevation: 20,
                    child: Container(
                        color: Colors.white10,
                        child: Column(
                          children: [
                            Image(
                                width: 150,
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvqAYn7Zk08kAqxbozmMmRgVAw5kEd7Z7o5zi8LoSOqEZWMEfc')),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Morning Textbook',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9, right: 90),
                              child: Text(
                                '8.6',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, top: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow),
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow,
                                  ),
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 110, bottom: 10),
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.pink,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 12,
                                  )),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Material(
                    elevation: 20,
                    child: Container(
                        color: Colors.white10,
                        child: Column(
                          children: [
                            Image(
                                width: 150,
                                image: NetworkImage('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS7rd8AW_YZaq7Pp-T7GcbEGlXKnCNtQL55J_PkohzxXdCfyUqU')),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Text(
                                'English Reading',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9, right: 90),
                              child: Text(
                                '8.0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, top: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow),
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow,
                                  ),
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 13, color: Colors.yellow)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 110, bottom: 10),
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.pink,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 12,
                                  )),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 1,
            )
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: HexColor('32af85'),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: HexColor('#32af85'),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  color: HexColor('#32af85'),
                ),
                label: 'Subject'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.energy_savings_leaf,
                  color: HexColor('#32af85'),
                ),
                label: 'Growing'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: HexColor('#32af85'),
                ),
                label: 'My')
          ]),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/red2.jpg')),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Morning Textbook',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              '8.6',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

