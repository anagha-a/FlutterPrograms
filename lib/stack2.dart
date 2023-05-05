import 'package:flutter/material.dart';

class stack2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Indexed Stack Sample'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 500,
              height: 100,
              child: Column(
                children: [
                  Text(
                    'Tottenham Hotspur',
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  Text(
                    'Hary Kane',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            child: Container(
              child: Center(child: Text('Man U')),
              width: 150,
              height: 50,
              color: Colors.yellow,
            ),
          ),
           Positioned(
            right: 170,
            bottom: 20,
             child: Container(
                child: Center(child: Text('Man City')),
                width: 150,
                height: 50,
                color: Colors.pink,
              ),
           ),
           Positioned(
            right: 10,
            bottom: 20,
             child: Container(
                child: Center(child: Text('Spurs')),
                width: 150,
                height: 50,
                color: Colors.red,
              ),
           ),
          
        ],
      ),
    );
  }
}
