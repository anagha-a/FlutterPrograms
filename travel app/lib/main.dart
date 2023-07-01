// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/thirdpage.dart';
import 'package:flutter_application_1/secondpage.dart';

void main(){
  runApp(MaterialApp(home: pg3() ,));
}


final Color background = Color.fromARGB(255, 19, 76, 243);
// final Color fill = const Color.fromARGB(255, 247, 247, 247);
final Color fill = Color.fromARGB(255, 247, 247, 247);
final List<Color> gradient = [
  background,
  background,
  fill,
  fill,
];
final double fillPercent = 30.23; // fills 56.23% for container from bottom
final double fillStop = (100 - fillPercent) / 100;
final List<double> stops = [0.0, fillStop, fillStop, 1.0];

class pg1_main extends StatefulWidget {
  const pg1_main({super.key});

  @override
  State<pg1_main> createState() => _pg1_mainState();
}

class _pg1_mainState extends State<pg1_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      // body: pg1(),
      // body: pg1(),

      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: '')
      ]),
    );
  }
}

class pg1 extends StatefulWidget {
  const pg1({super.key});

  @override
  State<pg1> createState() => _pg1State();
}

class _pg1State extends State<pg1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 19, 76, 243),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Location',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 18,
                    ),
                    Text(
                      'Depok, Jawa Barat',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.message,
                      color: Colors.grey,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    )),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 300,
              // width: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: gradient,
                stops: stops,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
              )),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 50,
                  height: 150,
                  child: Container(
                    color: Color.fromARGB(255, 239, 243, 246),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        // color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(92, 203, 207, 210),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 600,
                              height: 60,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.wallet,
                                              color: Colors.blue,
                                            ),
                                            Text('Wallet'),
                                          ],
                                        ),
                                        Container(
                                            width: 60,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 250, 255, 253)),
                                            child: Center(
                                                child: Text(
                                              'Paytren',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 230, 134, 140)),
                                            )))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.monetization_on_sharp,
                                              color: Colors.yellow,
                                            ),
                                            Text('Point',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 230, 134, 140))),
                                          ],
                                        ),
                                        Container(
                                            width: 60,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 250, 255, 253)),
                                            child: Center(
                                                child: Text('120,000',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            230,
                                                            134,
                                                            140)))))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.local_offer_sharp,
                                              color: Colors.brown,
                                            ),
                                            Text('Coupon'),
                                          ],
                                        ),
                                        Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 250, 255, 253)),
                                            child: Center(
                                                child: Text('23 Coupons',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            230,
                                                            134,
                                                            140)))))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // Park row

                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 190, 237, 190)),
                                          child: Image(
                                            width: 40,
                                            image: AssetImage(
                                                'images/park.png'),
                                          ),
                                        ),
                                        Text('Park')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 237, 202, 190)),
                                          child: Image(
                                            width: 40,
                                            image: AssetImage(
                                                'images/restaurant.png'),
                                          ),
                                        ),
                                        Text('Restaurant')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 237, 232, 190)),
                                          child: Image(
                                            width: 40,
                                            image: AssetImage(
                                                'images/hotel.png'),
                                          ),
                                        ),
                                        Text('Hotels')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 237, 190, 190)),
                                          child: Image(
                                            width: 40,
                                            image: AssetImage(
                                                'images/store.png'),
                                          ),
                                        ),
                                        Text('Store')
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // All categ

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 300,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(92, 203, 207, 210),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.apps_sharp,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'All Categories',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // color: Colors.green,
                ),
              ),
            ),

            // Searchbox

            Container(
              height: 100,
              // width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Place',
                          suffixIcon: Icon(Icons.keyboard_voice_rounded)),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.settings_input_composite_sharp),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'For You',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          'See more',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Gridview
            Container(
                height: 350,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      // place 1
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/page2'),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/tmpl.jpg'))),
                          padding: const EdgeInsets.all(8),
                          // color: Colors.teal[200],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              139, 158, 158, 158),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 70,
                                      height: 20,
                                      child: Center(
                                          child: Text(
                                        'LandMark',
                                        style: TextStyle(color: Colors.white),
                                      ))),
                                ],
                              ),
                              Container(
                                width: 550,
                                height: 80,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Temple of Heaven ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text('4.5 Reviews'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.map_outlined,
                                          color: Colors.blue,
                                        ),
                                        Text('Maraonda'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )),
          ]))
        ],
      )),
    );
  }
}
