import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SecondPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 10,
              ),
            ),
            title: Text(
              'Destination Detail',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            elevation: 0,
            actions: [
              Container(width: 40,height: 30,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Icon(
                  Icons.bookmark_border,size: 15,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/15193407/pexels-photo-15193407/free-photo-of-facade-of-the-temple-of-heaven-in-beijing-china.jpeg?auto=compress&cs=tinysrgb&w=600',
                      ))),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Temple of heaven ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.blue,
                              size: 13,
                            ),
                            Text(
                              'Margonda,JI Eyang subur punya',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      '\$15',
                      style: TextStyle(fontSize: 30, color: Colors.blue),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                width: 50,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 15,
                            ),
                            Text(
                              ' Open At',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3 Days',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 1,
                            color: Colors.grey,
                            height: 40,
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Text('Ratings', style: TextStyle(fontSize: 15))
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '(125 reviews)',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            // Column(
                            //   children: [Text('125 reviews')],
                            // )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 1,
                          color: Colors.grey,
                          height: 40,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 15,
                            ),
                            Text('Likes', style: TextStyle(fontSize: 15))
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '123 Likes',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tian tan or in indonesian,The Temple of Heaven is a place of worship for Confucian and Taoist  religions located in Beijing. It was built in the \n 15th century AD..',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Comments',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '(14)',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.white),
              // width: 200,
              child: ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Direction",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Colors.white),
                    )),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Book Ticket"),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.blue))),
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
