import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/account.dart';
import 'package:instagram_clone/pages/add.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //navigate around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//different pages to navigate to
  final List<Widget> _children = [
    UserHome(), //0
    SearchPage(), //1
    AddPage(),
    ReelsPage(),
    AccountPage(), //2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavbar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: 'Home',backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search',backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box, color: Colors.black), label: 'Add'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    color: Colors.black, AssetImage('assets/images/reel.png')),
                label: 'Reels',backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL-L1UhpS9glJRsLpcu8L2COL88RL9e_JIZw&usqp=CAU",
                  ),
                ),
                // child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL-L1UhpS9glJRsLpcu8L2COL88RL9e_JIZw&usqp=CAU")),
                // child: ImageIcon(
                //   NetworkImage(
                //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL-L1UhpS9glJRsLpcu8L2COL88RL9e_JIZw&usqp=CAU'),
                //   size: 25,
                // )),
                label: 'Account',
                backgroundColor: Colors.white)
          ]),
    );
  }
}
