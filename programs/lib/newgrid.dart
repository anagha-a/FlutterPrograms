import 'package:flutter/material.dart';

class grrrid extends StatelessWidget{
List items= [
  //item 1
  {
    'title':"Vagabond Sack",
    'price':"\$120.00",
    'image':"assets/icon/bag1.jpg"
   
  },
  // item 2
  {
    'title':"Stella",
    'price':"\$58.00",
    'image':"assets/icon/g.jpg"
  },
  {
    'title':"Whitney Belt",
    'price':"\$35.00",
    'image':"assets/icon/belt.jpg"
  },
  
  {
    'title':"Garden Strand",
    'price':"\$98.00",
    'image':"assets/icon/neck.jpg"
  },
  {
    'title':"Strut Earrings",
    'price':"\$34.00",
    'image':"assets/icon/earings.jpg"
  },
  {
    'title':"Varsity socks",
    'price':"\$12.00",
    'image':"assets/icon/socks.jpg"
  },
  {
    'title':"Apple watch",
    'price':"\$30.00",
    'image':"assets/icon/watch.jpg"
  },
  {
    'title':"JordanShoe",
    'price':"\$190.00",
    'image':"assets/icon/shoe.jpg"
  },
];


@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SHRINE"),
          leading: GestureDetector(
          child: Icon(
            Icons.menu,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: Icon(Icons.tune_rounded),
              )),
        ],
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: GridView.builder(
            itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.18/0.19, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            // color: colors[index],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    items[index]['image'],
                    height: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0,left: 8.0),
                            child: Text(
                            items[index]['title'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              items[index]['price'],
                            ),
                          )
                        ]),
                  ),
                )
              ],
            ),
          );
        
              }),
        ));
  }
}




