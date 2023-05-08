import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Grouped Listview'))),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Android',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Android Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),),
                 
                  child: Center(child: Text('Android',style: TextStyle(fontSize: 8,color: Colors.white),))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Flutter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Flutter Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),),
                 
                  child: Center(child: Text('Flutter',style: TextStyle(fontSize: 8,color: Colors.white),))

                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'IOS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text('IOS Tutorial',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),),
                 
                  child: Center(child: Text('IOS',style: TextStyle(fontSize: 8,color: Colors.white),))
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Java',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Java Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),),
                 
                  child: Center(child: Text('Java',style: TextStyle(fontSize: 8,color: Colors.white),))
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Python',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Python Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),),
                 
                  child: Center(child: Text('Python',style: TextStyle(fontSize: 8,color: Colors.white),))
                )
              ),
            ),
          ],
        ));
  }
}
