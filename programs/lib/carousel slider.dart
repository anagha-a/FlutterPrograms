import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel slider'),
      ),
      body: CarouselSlider(
        items: [
          Container(
            child: Image.asset('assets/icon/1.jpg'),
          ),
           Container(
            child: Image.asset('assets/icon/2.jpg'),
          ),
           Container(
            child: Image.asset('assets/icon/3.jpg'),
          ),
           Container(
            child: Image.asset('assets/icon/4.jpg'),
          ),
          
        ],
        options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayCurve: Curves.easeInCirc,
            // autoPlayAnimationDuration: Duration(se),
            enableInfiniteScroll: true,
            viewportFraction: 4),
      ),
    );
  }
}
