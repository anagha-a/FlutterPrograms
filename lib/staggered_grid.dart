import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class staggrd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staggered grid'),),
      body: StaggeredGridView.count(crossAxisCount: 4,mainAxisSpacing: 5,crossAxisSpacing: 5,
      staggeredTiles: [
        StaggeredTile.count(2,2),
        StaggeredTile.count(2,2),
        StaggeredTile.count(3,2),
        StaggeredTile.count(2,2),
        StaggeredTile.count(3,2),
      ],
      children: [
        customchild(icondate: Icons.icecream_outlined,bgcolor: Colors.pink,),
        customchild(icondate: Icons.icecream_outlined,bgcolor: Colors.red,),
        customchild(icondate: Icons.icecream_outlined,bgcolor: Colors.lightBlue,),
        customchild(icondate: Icons.icecream_outlined,bgcolor: Colors.green,),
        customchild(icondate: Icons.icecream_outlined,bgcolor: Colors.yellow,),

      ],
      )
    );
  }

}
class customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData icondate;
  customchild({this.bgcolor,required this.icondate});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(icondate,color: Colors.yellow,),
    );
  }

}