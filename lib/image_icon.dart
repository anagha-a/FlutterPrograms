import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.account_box,size: 50,color: Colors.white,),
              Image(image: AssetImage('assets/icon/dog.png'),height: 90,),
              Text("Image icon",style: TextStyle(fontSize: 25),)

            ],
          ),

        ),
      ),
    );
  }
}