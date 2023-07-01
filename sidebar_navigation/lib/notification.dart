import 'package:flutter/material.dart';
import 'package:sidebar_navigation/nav%20draw.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        drawer: CustomDrawer(currentPage: 5,),
        
        
      );
}
