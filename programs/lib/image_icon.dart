import 'package:flutter/material.dart';


// void main(){
//   runApp(MaterialApp(home: icon(),
//   theme: ThemeData(primarySwatch: Colors.cyan),));
//
// }

class icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-255379.jpg&fm=jpg"),fit: BoxFit.cover)),
        // color: Colors.purple,
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