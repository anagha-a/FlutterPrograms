import 'package:flutter/material.dart';
import 'package:sidebar_navigation/nav%20draw.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        
        appBar: AppBar(
          title: Text('People'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: CustomDrawer(currentPage: 0,),
        
        
      );
}
