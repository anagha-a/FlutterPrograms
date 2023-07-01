import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MyBottombarState(); 
    
  }
  

class _MyBottombarState extends State<Bottomnav> {
  int selectedd=0;
  List bodys=const <Widget>[
    Center(child: Card(child: Padding(padding: EdgeInsets.all(50.0),child: Text('Account'),),)),
    Center(child: Card(child: Padding(padding: EdgeInsets.all(50.0),child: Text('Settings'),),)),
    Center(child: Card(child: Padding(padding: EdgeInsets.all(50.0),child: Text('Favourites'),),)),
    Center(child: Card(child: Padding(padding: EdgeInsets.all(50.0),child: Text('Home'),),))
  ];
  void onitemtapped(int index){
    setState(() {
      selectedd=index;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bottom Bar'),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.yellow,

        
        backgroundColor: Colors.black,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourites'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),

      ],
      currentIndex: selectedd,
      onTap: onitemtapped,
      ),
      body:bodys[selectedd] ,
    );
  }
}