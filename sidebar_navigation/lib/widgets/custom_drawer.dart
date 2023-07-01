import 'package:flutter/material.dart';
import 'package:sidebar_navigation/favourites.dart';
import 'package:sidebar_navigation/notification.dart';
import 'package:sidebar_navigation/people.dart';
import 'package:sidebar_navigation/plugin.dart';
import 'package:sidebar_navigation/updates.dart';
import 'package:sidebar_navigation/workflow.dart';

class CustomDrawer extends StatelessWidget {
  final int currentPage;
  const CustomDrawer({
    super.key, required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
  
    return Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Color.fromARGB(255, 33, 54, 243)),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
            
              child: SizedBox(
                height: 120,
                child: DrawerHeader(
                  
                  decoration: BoxDecoration(color:  Color.fromARGB(255, 33, 54, 243)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sarah Abs',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('sarah@abs.com',style: TextStyle(color: Colors.white,fontSize: 14)),
                      
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.add_comment_outlined))
                          
                        ],
                      ),
                    ],
                  )),
              ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login2()));
                },
                child: InkWell(
                  onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PeoplePage()));
                },
                  child: SizedBox(
                    child: ListTile(
                      leading: Icon(Icons.people,color:  currentPage!=0? Colors.white:Colors.yellow),
                      title: Text(
                        'People',
                        style: TextStyle(fontSize: 15, color:  currentPage!=0? Colors.white:Colors.yellow),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FavouritesPage()));
                },
                child: SizedBox(
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite_border,
                     color:  currentPage!=1? Colors.white:Colors.yellow
                    ),
                    title: Text('Favourites',
                        style: TextStyle(fontSize: 15,color:  currentPage!=1? Colors.white:Colors.yellow)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WorkPage()));
                  
                },
                child: SizedBox(
                  child: ListTile(
                    leading: Icon(
                      Icons.workspaces_outline,
                      color: Colors.white,
                    ),
                    title: Text('Workflow',
                        style: TextStyle(fontSize: 15, color:currentPage!=2? Colors.white:Colors.yellow)),
                  ),
                ),
              ),
              
              InkWell(onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UpdatePage()));
        
              },
                child: SizedBox(
                  child: ListTile(
                    leading: Icon(
                      Icons.update,
                      color: Colors.white,
                    ),
                    title: Text('Updates',
                        style: TextStyle(fontSize: 15, color: currentPage!=3? Colors.white:Colors.yellow)),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              InkWell(onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PluginPage()));
        
              },
                child: SizedBox(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_tree_outlined,
                      color: Colors.white,
                    ),
                    title: Text('Plugins',
                        style: TextStyle(fontSize: 15, color:currentPage!=4? Colors.white:Colors.yellow)),
                  ),
                ),
              ),
              InkWell(onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                
              },
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                    title: Text('Notifications',
                        style: TextStyle(fontSize: 15, color:currentPage!=5? Colors.white:Colors.yellow)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
