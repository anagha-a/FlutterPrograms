import 'package:api_integration/views/home_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Apiint());
}

class Apiint extends StatelessWidget {
  const Apiint({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Api',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePageView(),
    );
  }
}
