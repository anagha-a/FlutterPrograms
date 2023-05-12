import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: list_build()));
}
class list_build extends StatelessWidget{
  var names=['anu','manu','sunu','ram','raju'];
  var colors=[800,700,600,500,400,300];
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'),),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context,index){
        return Container(
          height: 50,
          color: Colors.green[colors[index]],
          child: Text(names[index]),
        );
      }
      ),
    );
  }

}