import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const Loti());

class Loti extends StatelessWidget {
  const Loti({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            LottieBuilder.network('https://assets8.lottiefiles.com/packages/lf20_PXcBlV.json'),
            // Load a Lottie file from your assets
            Lottie.asset('assets/animation/cat.json'),

            // Load a Lottie file from a remote url
            // Lottie.network(
            //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

            // // Load an animation and its images from a zip file
            // Lottie.asset('assets/lottiefiles/angel.zip'),
          ],
        ),
      ),
    );
  }
}