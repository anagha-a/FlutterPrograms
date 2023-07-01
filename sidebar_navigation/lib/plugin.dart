import 'package:flutter/material.dart';
import 'package:sidebar_navigation/nav%20draw.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';

class PluginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        
        appBar: AppBar(
          title: Text('Plugins'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        drawer: CustomDrawer(currentPage: 4,),
        
        
      );
}
