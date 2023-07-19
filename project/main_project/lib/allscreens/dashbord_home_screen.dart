import 'dart:developer';

import 'package:main_project/functions/validators.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../models/drivers_data.dart';
import '../models/passengers_data.dart';


class dashboardHome extends StatefulWidget {
  const dashboardHome({Key? key}) : super(key: key);
  static const String idScreen = "dashbordHome";

  @override
  State<dashboardHome> createState() => dashboardHomeState();
}

class dashboardHomeState extends State<dashboardHome> {
 /// These lines of code are declaring and initializing empty lists of `DriversData` and
 /// `PassengersData` objects. These lists will be used to store the retrieved data from the database.
  List<DriversData> _acceptedDrivers = [];
  List<DriversData> _newDrivers = [];
  // List<DriversData> _foundedDrivers = [];
  List<PassengersData> _allPassengers = [];
  // List<PassengersData> _filteredPassengers = [];
  
  var  driverCount, newdriverCount,passengerCount;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // countCalculator();
    getDrivers();
    getPassengers();

   
  }

 /// The function retrieves passenger data from a database and converts it into a list of PassengersData
 /// objects.
 getPassengers() async {
    DatabaseEvent snapshotEvent = await passengerRef.once();
    final passengers_data =
        snapshotEvent.snapshot.value as Map<dynamic, dynamic>; // converting data readed from firebase database to Map
    List<PassengersData> data = [];  // created a list to hold PassengersData items
    passengers_data.forEach((key, value) {
      data.add(PassengersData.fromJson(value)); 
      // print(value);
    });

    setState(() {
      _allPassengers = data;
      passengerCount = _allPassengers.length;
    });
  }

  /// The function `getDrivers()` retrieves driver data from a database and converts it into a list of
  /// `DriversData` objects.
  getDrivers() async {
    DatabaseEvent snapshotEvent = await driverRef.once();
    log("values  : "+snapshotEvent.snapshot.value.toString());
    if(snapshotEvent.snapshot.value!="")
{    final drivers_data = snapshotEvent.snapshot.value as Map<dynamic, dynamic>;
    List<DriversData> data = [];
    log("success"+drivers_data.toString());
    drivers_data.forEach((key, value) {
      
      data.add(DriversData.fromJson(value));
      // print(value);
    });
//checking the status
    setState(() {
      _acceptedDrivers = data
          .where((driver) =>
              driver.status.toString().toLowerCase().contains('accepted'))
          .toList();

      _newDrivers = data
          .where((driver) =>
              driver.status.toString().toLowerCase().contains('waiting'))
          .toList();

      driverCount = _acceptedDrivers.length;
      newdriverCount = _newDrivers.length;
    });
}
else{
  setState(() {
    _acceptedDrivers=[];
    _newDrivers=[];
     driverCount=0;
  newdriverCount=0;
  });
 
}
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellowAccent),
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Total Passengers",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: "Brand Bold")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          passengerCount != null
                              ? passengerCount.toString()
                              : "Loading",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.black,
                              fontFamily: "Brand Bold")),
                      Icon(
                        Icons.people,
                        size: 50,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellowAccent),
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Total Drivers",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: "Brand Bold")),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          driverCount != null
                              ? driverCount.toString()
                              : "Loading",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.black,
                              fontFamily: "Brand Bold")),
                      Icon(
                        Icons.co_present,
                        size: 50,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellowAccent),
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("New Driver Requests",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: "Brand Bold")),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          newdriverCount != null
                              ? newdriverCount.toString()
                              : "Loading",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.black,
                              fontFamily: "Brand Bold")),
                      Icon(
                        Icons.new_label,
                        size: 50,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
