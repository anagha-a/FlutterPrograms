import 'package:flutter/material.dart';

class Tabbar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(title: Text('Tabbed Appbar',style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.yellow,
      actions: [
        PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('About')),
                  PopupMenuItem(child: Text('Settings')),
                  PopupMenuItem(child: Text('Logout')),
                ];
              }),
      ],
      bottom: TabBar(tabs: [
        Tab(child: Column(children: [Icon(Icons.directions_car,color: Colors.black,),Text('Car',style: TextStyle(color: Colors.black),)],),),
        Tab(child: Column(children: [Icon(Icons.motorcycle,color: Colors.black,),Text('Bike',style: TextStyle(color: Colors.black),)],),),
        Tab(child: Column(children: [Icon(Icons.directions_bus,color: Colors.black,),Text('Bus',style: TextStyle(color: Colors.black),)],),),
        Tab(child: Column(children: [Icon(Icons.directions_boat,color: Colors.black,),Text('Boat',style: TextStyle(color: Colors.black),)],),),
        
      ]),
      ),
      body: TabBarView(children: [
            Car(),
            Bike(),
            Bus(),
            Boat(),

            
          ]),
    ));
  }

}
class Car extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.directions_car,size: 200,
      
      ),
      Text('CAR')
    ],
    
    ),
   );
  }

}
class Bike extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.motorcycle,size: 200,
      
      ),
      Text('BIKE')
    ],
    
    ),
   );
  }

}
class Bus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.directions_bus,size: 200,
      
      ),
      Text('BUS')
    ],
    
    ),
   );
  }

}
class Boat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.directions_boat,size: 200,
      
      ),
      Text('BOAT')
    ],
    
    ),
   );
  }

}