import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class stagg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staggered grid'),),
      body: StaggeredGridView.count(crossAxisCount: 4,mainAxisSpacing: 5,crossAxisSpacing: 5,
      staggeredTiles: [
        StaggeredTile.count(2,2),
        StaggeredTile.count(1,4),
        StaggeredTile.count(2,3),
        StaggeredTile.count(2,2),
        StaggeredTile.count(3,2),
      ],
      children: [
        Card(child: Column(children: [Image(image: AssetImage('assets/icon/rose.jpg'),),Text('rose')])),
        Card(child: Column(children: [Image(image: AssetImage('assets/icon/jas.jpg'),),Text('jasmine')])),
        Card(child: Column(children: [Image(image: AssetImage('assets/icon/hib.jpg'),),Text('hibiscus')])),
        
        Card(child: Column(children: [Image(image: AssetImage('assets/icon/white.jpg'),),Text('dalia')])),

        ],
        ),
    );
  }

}


