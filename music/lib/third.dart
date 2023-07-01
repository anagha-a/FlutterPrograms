// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

var qt1 = [
  'Rap Gangs',
  'Rap Party',
  'Rap Gangs',
  'Rap Dizz',
  'Rap Gangs',
  'Rap Party',
  'Hip Hop',
  'Rap Dizz'
];

class playerui extends StatelessWidget {
  const playerui({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.share),
            SizedBox(
              width: 6,
            ),
            Icon(Icons.favorite_border_outlined),
            SizedBox(
              width: 6,
            ),
            Icon(Icons.more_horiz_outlined),
            SizedBox(
              width: 7,
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/backk.jpg'))),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 370,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shuffle,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.replay_circle_filled_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 105, top: 20),
                  child: Text(
                    'Everything Is Blessed',
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 285, top: 10),
                  child: Text(
                    'Jeoparize',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProgressBar(
                    // bufferedBarColor: Colors.white,
                    progressBarColor: Colors.pink,
                    thumbColor: Colors.white,
                    timeLabelTextStyle: TextStyle(color: Colors.white),
                    progress: Duration(milliseconds: 1000),
                    buffered: Duration(milliseconds: 2000),
                    total: Duration(milliseconds: 10000),
                    onSeek: (duration) {
                      print('User selected a new time: $duration');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 310, top: 10,bottom: 3),
                  child: Container(
                    child: Text(
                      'Playlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // ListvIew
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Container(
                      height: 130,
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Image(
                                          width: 70,
                                          height: 70,
                                          image: AssetImage(
                                              'images/pic5.jpg')),
                                      Column(
                                        children: [
                                          Text(
                                            qt1[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 40, top: 8),
                                            child: Text(
                                              'Havana',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        size: 40,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  )
                                ],
                              ),
                            );
                          })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
