import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:driver/AllScreens/autoInfoScreen.dart';
import 'package:driver/functions/configMaps.dart';
import 'package:driver/notifications/pushNotifictionService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:driver/AllScreens/loginScreen.dart';
import 'package:driver/AllScreens/mainScreen.dart';
import 'package:driver/AllScreens/registrationScreen.dart';
import 'package:driver/DataHandler/appData.dart';
import 'package:driver/functions/permissions.dart';
import 'package:flutter_geofire/flutter_geofire.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'functions/firebaseReferances.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// This code is retrieving the current user from Firebase Authentication and setting it to the
  /// variable `currentFirebaseUSer`.
  currentFirebaseUSer = FirebaseAuth.instance.currentUser;
  
  FirebaseMessaging.onMessage.listen((RemoteMessage event) {

    PushNotficationService pushNotficationService = PushNotficationService();
    // pushNotficationService.getRideRequestId(event.data['ride__request_id']);
    pushNotficationService.retriveRideRequestInfo(pushNotficationService
        .getRideRequestId(event.data['ride__request_id']));

    print("message recieved");
    log("onmessaged clicked");

    print(event.notification!.body);
  });
  /// The code `FirebaseMessaging.onMessageOpenedApp.listen((message) { ... }` is listening for when a
  /// notification message is clicked and the app is opened. When this event occurs, the code inside the
  /// listener function is executed.
  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    // log("ride request ID : " + message.data['ride__request_id']);
    PushNotficationService pushNotficationService = PushNotficationService();
    pushNotficationService.retriveRideRequestInfo(pushNotficationService
        .getRideRequestId(message.data['ride__request_id']));
    ;
    log("onmessagedopend app clicked");
  });
  runApp(const MyApp());
}


//  is creating a reference to a specific location in the Firebase Realtime Database.
DatabaseReference rideRequestRef = FirebaseDatabase.instance
    .ref()
    .child("drivers")
    .child(currentFirebaseUSer!.uid)
    .child("newRide");

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    listenforpermissions();
    super.initState();
  }

  // This widget is the root of passenger application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => appData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eyy-AUTO Driver',
        theme: ThemeData(primarySwatch: Colors.yellow),
        // initialRoute: FirebaseAuth.instance.currentUser == null
        //     ? loginScreen.idScreen
        //     : mainScreen.idScreen,
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? loginScreen.idScreen
            : mainScreen.idScreen,
        /// The `routes` property in the `MaterialApp` widget is used to define the available
        /// routes/screens in the application. It maps a route name to a builder function that returns
        /// the widget for that route.
        routes: {
          registrationScreen.idScreen: (context) => registrationScreen(),
          loginScreen.idScreen: (context) => loginScreen(),
          mainScreen.idScreen: (context) => mainScreen(),
          AutoInfoScreen.idScreen: (context) => AutoInfoScreen(),
        },
      ),
    );
  }
}
