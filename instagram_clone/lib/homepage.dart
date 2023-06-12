import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/account.dart';
import 'package:instagram_clone/pages/home.dart';
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
    UserHome(),
    SearchPage(),
    AccountPage(),
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
                icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box, color: Colors.black), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.videocam, color: Colors.black),
                label: 'Reels'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black), label: 'Account')
          ]),
    );
  }
}
