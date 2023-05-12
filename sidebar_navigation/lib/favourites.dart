import 'package:flutter/material.dart';
import 'package:sidebar_navigation/widgets/custom_drawer.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Favourites'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        drawer:Theme(data: Theme.of(context).copyWith(canvasColor: Colors.green),
            child:CustomDrawer(currentPage: 1)
          
          ),
      );
}