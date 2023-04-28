import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// void main(){
//   runApp(MaterialApp(home: login()));
// }
class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("LOGIN"),
      ),
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Colors.purple,Colors.yellow])),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(bottom: 50, top: 50),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Color.fromRGBO(255, 143, 54, 244),
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100,left: 100),
              child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),prefixIcon: Icon(Icons.account_circle_outlined), hintText: "Username"),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100,left: 100),
              child: Padding(padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)), hintText: "Password",suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(onPressed: () {Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );}, child: Text("LOGIN")),
            ),
            TextButton(onPressed: () {}, child: Text("Register Now"))
          ],),)
        
      
      );
      
    
  }

}