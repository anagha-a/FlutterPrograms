import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Details(), debugShowCheckedModeBanner: false));
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      // heading
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // title and rating
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 9),
                  child: Text(
                    'Most Luxurious & \nPeaceful Natural Place ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                )),
                      ),
                      Text(
                        " 4.7 Ratings",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            //vertical line
            Row(
              children: [
                Container(
                  width: 1,
                  color: Colors.grey,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                // image
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/1320686/pexels-photo-1320686.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        fit: BoxFit.cover),
                  ),
                  width: 50,
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 8),
        child: Container(
          child: Row(children: [
            Text(
              'About Places',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ]),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took.',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 20, bottom: 5),
        child: Row(
          children: [
            Text(
              'Special Facilities',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),

      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.local_parking,
                            color: Colors.blue,
                            size: 20,
                          )),
                      Text('Free Parking'),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.support_agent_outlined,
                            color: Colors.blue,
                            size: 20,
                          )),
                      Text('24h Support'),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.wifi,
                            color: Colors.blue,
                            size: 20,
                          )),
                      Text('Free Wifi'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&w=600'), fit: BoxFit.cover)),width: 400,height: 200,
        ),
      ),

      Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 10),
          child: Row(
            children: [
              Text(
                'Our Packages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          )),

      Padding(
        padding: const EdgeInsets.only(right: 38, left: 20),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 13,
              ),
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 239, 240, 0.806),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Adult',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 3,
                        child: Container(
                          width: 40,
                          height: 2,
                          color: const Color.fromARGB(255, 145, 132, 132),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '02',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 239, 240, 0.806),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Child',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 3,
                        child: Container(
                          width: 40,
                          height: 2,
                          color: const Color.fromARGB(255, 145, 132, 132),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '02',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 239, 240, 0.806),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Night',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 3,
                        child: Container(
                          width: 40,
                          height: 2,
                          color: const Color.fromARGB(255, 145, 132, 132),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '02',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 239, 240, 0.806),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Room',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 3,
                        child: Container(
                          width: 40,
                          height: 0.5,
                          color: const Color.fromARGB(255, 145, 132, 132),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '02',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),

      SizedBox(
        height: 10,
      ),
      // Button
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: 400,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  '860\$',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  'Booking',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    ])));
  }
}
