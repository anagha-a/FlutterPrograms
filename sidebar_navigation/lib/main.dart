import 'package:flutter/material.dart';

import 'nav draw.dart';



void main() {
  runApp(MaterialApp(
    home: drw(),
    debugShowCheckedModeBanner: false,
  ));
}

class Side extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Bar Navigation'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color.fromARGB(186, 68, 137, 255)),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(),
                accountName: Center(
                    child: Text(
                  'Sarah Abs',
                  style: TextStyle(fontSize: 15),
                )),
                accountEmail: Center(
                    child:
                        Text('sarah@abs.com', style: TextStyle(fontSize: 15))),
                currentAccountPicture: GestureDetector(
                    onTap: () {
                      print("Hello");
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>()));
                },
                
                    child:
                      ListTile(
                        leading: Center(child: Icon(Icons.people,color: Colors.white)),
                        title: Center(child: Text('People',style: TextStyle(fontSize: 15,color: Colors.white),)),
                        
                      ),
                    
                  
              ),
              ListTile(
                leading:Icon(Icons.favorite_border,color: Colors.white,),
                title: Text('Favourites',style: TextStyle(fontSize: 15,color: Colors.white)),
                
              ),
              ListTile(
                leading: Icon(Icons.workspaces_outline,color: Colors.white,),
                title: Text('Workflow',style: TextStyle(fontSize: 15,color: Colors.white)),
                
              ),
              ListTile(
                leading: Icon(Icons.update,color: Colors.white,),
                title: Text('Updates',style: TextStyle(fontSize: 15,color: Colors.white)),
                
              ),
              ListTile(
                leading: Icon(Icons.account_tree_outlined,color: Colors.white,),
                title: Text('Plugins',style: TextStyle(fontSize: 15,color: Colors.white)),
                
              ),
              ListTile(
                leading: Icon(Icons.notifications_outlined,color: Colors.white,),
                title: Text('Notifications',style: TextStyle(fontSize: 15,color: Colors.white)),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
