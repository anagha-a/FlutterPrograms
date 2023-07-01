import 'package:flutter/material.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Workflow'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        drawer:Theme(data: Theme.of(context).copyWith(canvasColor: Colors.blue),
            child:CustomDrawer(currentPage: 2)
          
          ),
      );
}