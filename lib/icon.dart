import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box,size: 50,color: Colors.white,),
              // ImageIcon(AssetImage('assets/icons/facebook.png'),size: 150,),
              Text("Application",style: TextStyle(fontSize: 25),)

            ],
          ),

        ),
      ),
    );
  }
}