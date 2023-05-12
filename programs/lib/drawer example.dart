import 'package:flutter/material.dart';
import 'package:splashscreen/login_validation.dart';

class drw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.greenAccent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAABFFBMVEWLdqXqQzVChfQ0qFP7vATFIh6JdaN8Z5NteYU9hvgvq08yqVGAbZhLgeh/Z4uPc6lMnWnpNzf4qhTwPiiCeav/wQDtQS+HeKj/vQB7aZKPdZ+Gc6nIFwD/wwDFIRzvQCzHHg8Tpldya5h/ZZWdY4ejXn2aZ4yEcKmjg463j3uvjIKRd522QVGuTmXEmmzmrzuaf5aWbJTGHhTBKy71uhqpaoubZ5bcqTu2YXruMyzGWWiZen3UUVbfSUalSXvnRDnjvA9cd4h0sEKCaLSxszV6bb7AXHCyZICksjpkedbPVF6CrkXbTU1iq0y7Nk6uRW2bVpDMtylem1xxdYpeecxmkIBzfMVSk25flHp2cI5xb6pFmmJhRvLgAAADTElEQVR4nO3aa1cSQQCA4R2ugYLZrju7iIDgpTRTUcss08y0zK6Waf7//9HOAu5FWOGDSO37HL7A2Q9z3jM7exk0DQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwN2Sfx01P3+kw/gGyNDe/0Eev6cXHT5aWF4cwopElS0/LNcfKbbUWn6WmLGtmdS2+s0uuN5tppbZRisw1vTqVUqyppfjWalbSLZXKeu9acnnTSrXNrA1xeKNErjTTHZXaltHrsOePUtesFzFdt2S6kvbo291rGVsvfbFSM9nMkIc5Isq+Vmmh73SrZWzrk/5YU6/Ghz7OUVAKxhLV1zfXLWNHF6FY2XsY6v0zmsFYwtwN33HJ11URivUgnueh8aYWjCXMvcBFUWq7pgjGsvbfxjOWLJQrwVhOrgWvllwXqlUw1kFMZ5aWe+er1Yol9OPOMi/nzNZPvljWYT62sXLvvVqiU+uoVcs41kU4lvVhNr6xErmP5WYolqieqFrGUaeVF8v6NJuMcaxErrBRC8US1dOMNE6qIhTLsj7PJmMdK5FLfCmHYqmL4qkpQrGszaQS61hOrq/lUCxncvm/uLGs/SSxVK1v5XAsEY5lfZ8lVquWuoWIjGUdtlsRS10UK1Gx1GWQWNe1CmkzItbBdStiubVEr1rm5I+xJLF8sRIF+7R7LXO3cUWsUKxi/UTv0qp6ahNLCcYa9z3heK1O6sRyhWL5np079KO6bU88JNbNWJpcCK5b1XmnVYZYyo1Ymlzf8+UyF1QrjVjKzViazOx2apl7RdtWPxJL6RKrvUfh3jLYrVbEcnWN5e5+qX2xersVsVzdY6l9VaHvuMuVi1hKj1iasaVve62I5eoVS5MlXytiuXrG0rSM7xuxlIhYfsRSiDUAYg2AWAMg1gCI1b9M4B18v7HO4hmrVPDF+hkR61feF6thxzPWuW8vrG73/mNtxouV/92whzjEEVIq5LyJFTFhvKk1NmZn4/lvZWfKtGupVlENJi7y7rKVT15m43kWKqXzQi6XKPwp2tENJs6u8vl88iKbjYz6vysWbedzSyvHROPSbjTi3Uq9X3D0c2qN93sgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAwfwGq9lJf9ZBBrgAAAABJRU5ErkJggg==')),
                ),
                accountName: Text('Anagha'),
                accountEmail: Text('anagha@gmail.com'),
                
                currentAccountPicture: GestureDetector(
                  onTap: (){
                    print("Hello");
                  },
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/icon/2.jpg'),
                )),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/icon/1.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/icon/3.jpg'),
                  )
                ],
              ),
              GestureDetector(onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login2()));
              },
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              ListTile(
                leading:IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login2()));

                }, icon: Icon(Icons.person)),
                title: Text('Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
