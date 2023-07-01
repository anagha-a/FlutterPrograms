import 'package:flutter/material.dart';

class grid2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview')),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
          child: Card(color: Colors.orange,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20)),
            Icon(Icons.home,size: 40,color: Colors.black),
            Text('Home'),
        
          ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          child: Card(color: Colors.yellow,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20)),
            Icon(Icons.phone,size: 40,color: Colors.black),
            Text('Call'),
        
          ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          child: Card(color: Colors.red,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20)),
            Icon(Icons.mail,size: 40,color: Colors.black),
            Text('Gmail'),
        
          ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          child: Card(color: Colors.green,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20)),
            Icon(Icons.lock_clock_rounded,size: 40,color: Colors.black),
            Text('Clock'),
        
          ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          child: Card(color: Colors.blue,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20)),
            Icon(Icons.message,size: 40,color: Colors.black),
            Text('Message'),
        
          ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          child: Card(color: Colors.grey,
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20)),
            Icon(Icons.contact_emergency,size: 40,color: Colors.black),
            Text('Contacts'),
        
          ]),
          ),
        )
      ],
      ),
    );
  }

}