import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sidebar_navigation/favourites.dart';
import 'package:sidebar_navigation/notification.dart';
import 'package:sidebar_navigation/plugin.dart';
import 'package:sidebar_navigation/updates.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';
import 'package:sidebar_navigation/workflow.dart';

import 'people.dart';

class drw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Bar Navigation'),
      ),
      drawer: 
         const CustomDrawer(currentPage: 100),
      
    );
  }
}

