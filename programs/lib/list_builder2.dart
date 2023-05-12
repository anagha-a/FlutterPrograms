import 'package:flutter/material.dart';

class list_build2 extends StatelessWidget{
  var name=['Joseph','Sara','Maria','Gus'];
  var course=['Flutter','Python','Mearn','Java'];
  var img=['assets/icon/1.jpg','assets/icon/2.jpg','assets/icon/3.jpg','assets/icon/4.jpg'];
  var colors=[300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List'),),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext context,index){
          
         return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           child: ListTile(
            title: Text(name[index]),
            subtitle: Text(course[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(img[index]),
            ),
            trailing: Icon(Icons.person),
            tileColor: Colors.lime,
            
         
           ),
         );
      
      }
      ),
    );
  }

}