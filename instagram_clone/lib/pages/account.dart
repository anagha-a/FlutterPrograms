import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_stories.dart';

void main() {
  runApp(MaterialApp(
    home: AccountPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              children: [
                //profile picture
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle)),

                //number of posts,

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Posts')
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '3000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Followers')
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '50',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Following')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //name and bio
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anagha Manojkumar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text('This time too shall pass'),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                          child: Text(
                        'Edit Profile',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                          child: Text('Share Profile',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Icon(Icons.person_add)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            ),
          ),

          //highlights
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              children: [
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 2'),
                BubbleStories(text: 'story 3'),
                BubbleStories(text: 'story 4'),
                BubbleStories(text: 'story 5'),
              ],
            ),
          ),

          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Image.network(
                    'https://www.flaticon.com/free-icons/instagram'),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(
            children: [AccountPage()],
          )),
        ],
      )),
    );
  }
}
