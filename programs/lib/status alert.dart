import 'package:flutter/material.dart';
import 'package:status_alert/status_alert.dart';

void main(){
  runApp(MaterialApp(home: sts_alrt(),));
}
class sts_alrt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: ElevatedButton(onPressed:(){StatusAlert.show(
        context,
        duration: Duration(seconds: 2),
        title: 'Title',
        subtitle: 'Subtitle',
        configuration: IconConfiguration(icon: Icons.done),
        maxWidth: 260,
      );},child: Text("Back"),),
    ),
  );
  }

}