// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class pg3_main extends StatefulWidget {
  const pg3_main({super.key});

  @override
  State<pg3_main> createState() => _pg2_mainState();
}

class _pg2_mainState extends State<pg3_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pg3(),
      bottomNavigationBar: Container(
        height: 144,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SUBTOTAL'),
                    Text(
                      '\$ 132',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.monetization_on_sharp,
                      color: Colors.yellow,
                    ),
                    Text(
                      'You Will Get 1250 Points',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              removeTop: true,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Pay Now'),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50), shape: StadiumBorder()),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class pg3 extends StatefulWidget {
  const pg3({super.key});

  @override
  State<pg3> createState() => _pg3State();
}

class _pg3State extends State<pg3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            leading: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            title: Text(
              'Complete Your Payment',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            // Timeline
            Container(
                width: 150,
                height: 100,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 15,
                          child: Icon(Icons.check),
                        ),
                        Text('Booking')
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 10,
                      color: Colors.blue,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 15,
                          child: Icon(Icons.circle,color: Colors.white,),
                        ),
                        Text('Payment')
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 10,
                      color: Color.fromARGB(100, 33, 149, 243),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(100, 33, 149, 243),
                          radius: 15,
                          child: Icon(Icons.circle),
                        ),
                        Text('Complete')
                      ],
                    ),
                  ],
                )),
            // Complete Payment

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        // 1st row
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Complete Payment In',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '12:22:06',
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 240,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [BoxShadow(blurRadius: 1)],
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                // Row
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Image(
                                          width: 50,
                                          height: 50,
                                          image: AssetImage(
                                              'images/tmpl.jpg')),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Temple of Heaven',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'Entrance Ticket',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ])
                                  ],
                                ),
                                // Row 1
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.airplane_ticket,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Entrance Ticket',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('1 Regular Ticket')
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(''),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Icon(
                                                Icons.account_circle_rounded,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                '1 Adult',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                                // Row
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Date',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                          Text('Tue 18 October 2022')
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(''),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Icon(
                                                Icons.alarm,
                                                color: Colors.black,
                                              ),
                                              Text('19:00',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15))
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Payment Method
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Icon(
                    Icons.paypal_sharp,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'PayPal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    'Change',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Text(
                  'Add Discount',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Icon(
                    Icons.shopify_sharp,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '50% Off',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    'Add',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
