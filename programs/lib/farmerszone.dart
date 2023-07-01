import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Farmerzone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.green,
            floating: false,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.location_on_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  "Kochi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                
                height: 40,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for vegetables and fruits',
                          prefixIcon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 20,
                  width: 120,
                  child: Center(
                    child: Text(
                      'VEGETABLES',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 20,
                  width: 120,
                  child: Center(
                    child: Text(
                      'FRUITS',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 20,
                  width: 120,
                  child: Center(
                    child: Text(
                      'EXOTIC CUTS',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            CarouselSlider(
                items: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network(
                        'https://food.unl.edu/newsletters/images/fresh-vegetables-basket.png'),
                  ),
                  Container(
                    child: Image.network(
                        'https://food.unl.edu/newsletters/images/fresh-vegetables-basket.png'),
                  )
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.timer),
                        SizedBox(height: 10),
                        Text('30 min policy')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.camera_front_outlined),
                        SizedBox(height: 10),
                        Text('Traciability'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.home_work),
                        SizedBox(height: 10),
                        Text('Local Surrounding')
                      ],
                    )
                  ],
                ),
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Shop by category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            VegGrid(),
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            label: 'Account')
      ]),
    );
  }
}

class VegGrid extends StatelessWidget {
  List<String> img = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];
  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: img.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / .3,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black, blurRadius: 20.0)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img[index]))),
              ),
              SizedBox(height: 8,),Text(names[index])
            ],
          );
        });
  }
}
