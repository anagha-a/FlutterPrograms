import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Placepage(), debugShowCheckedModeBanner: false));
}

class Placepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: 
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Go',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Center(child: Text('Fast',style: TextStyle(color: Colors.black),))
                  ],
                )
             ,
           
            actions: [
              CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'))
            ],
             bottom: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(248, 253, 249, 249),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Search here',
                          suffixIcon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'Popular Places',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 400,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://images.pexels.com/photos/9094948/pexels-photo-9094948.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                    padding: const EdgeInsets.all(8),
                    
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '\$250',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50,top: 170),
                          child: Text(
                            'Furious Place',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://images.pexels.com/photos/258118/pexels-photo-258118.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '\$300',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 170),
                          child: Text(
                            'Luxury Place',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://images.pexels.com/photos/2914305/pexels-photo-2914305.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '\$450',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 170),
                          child: Text(
                            'Furious Place',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://images.pexels.com/photos/2450296/pexels-photo-2450296.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '\$450',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 170),
                          child: Text(
                            'Nature Look',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              width: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 10, 4, 92),
                    fixedSize: Size(50, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {},
                child: Text(
                  'Explore Now',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ])),
        ],
      ),

        
        
      
    );
  }
}
