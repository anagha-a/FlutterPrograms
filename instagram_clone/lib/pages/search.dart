import 'package:flutter/material.dart';
import 'package:instagram_clone/util/explore_grid.dart';

void main() {
  runApp(MaterialApp(
    home: SearchPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  color: Colors.grey,
                  child: Container(
                      child: Text(
                    'Search',
                    style: TextStyle(color: Colors.black),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
      body: Exploregrid(),
    );
  }
}
