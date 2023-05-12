import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'list_builder.dart';
import 'list_builder2.dart';
import 'list_separated.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Colors.green[800],
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('About')),
                  PopupMenuItem(child: Text('Settings')),
                  PopupMenuItem(child: Text('Logout')),
                ];
              }),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.yellow,
               tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                text: 'Chat',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text('Contact')),
            list_build2(),
            list_sep(),
            list_build(),
          ]),
        ));
  }
}
