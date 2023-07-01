import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomsheet2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating a Modal Bottom Sheet'),
        backgroundColor: Colors.black26,
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
            child: Text('Show Modal Bottom sheet'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: 
                        const [
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                          ),
                          ListTile(
                            leading: Icon(Icons.copy),
                            title: Text('Copy Link'),
                          ),
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Edit'),
                          )
                        ]
                      
                    );
                  });
            },
          ),
        );
      }),
    );
  }
}
