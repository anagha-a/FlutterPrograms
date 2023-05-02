import 'package:flutter/material.dart';

class list_sep extends StatelessWidget{
  var name=['Joseph','Sara','Tomy','Jay'];
  var color=[800,700,600,500];
  var img=['assets/icon/1.jpg','assets/icon/2.jpg','assets/icon/3.jpg','assets/icon/4.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Separated')),
      body: ListView.separated(
        itemCount: name.length,
        itemBuilder: (BuildContext context,index){
        return Container(
        height: 50,
        color: Colors.green[color[index]],
        child: Center(
          child: Image(image: AssetImage(img[index])),
        ),
      );
      }, separatorBuilder: (BuildContext context, int index) { 
        return Divider(
          thickness: 4,
          color: Colors.blue[color[index]],
        );
       } ,
      
      ),
      
    );
  }

}