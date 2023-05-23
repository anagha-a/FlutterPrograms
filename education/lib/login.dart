import 'package:flutter/material.dart';

import 'homepage.dart';

void main(){
  runApp(MaterialApp(home: Loginn(),debugShowCheckedModeBanner: false));
}

class Loginn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  var formkey = GlobalKey<FormState>();
  bool showpas = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("EDUCATION APP"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage(
                    "assets/img/login-bg.jpg"),
                fit: BoxFit.cover)),
                
        child: Form(
            key: formkey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100, left: 100),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "Email",
                          hintText: "Email",
                          prefixIcon: Icon(Icons.account_circle_outlined),
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (username) {
                          if (username == null || username.isEmpty) {
                            return "please enter valid email";
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(username)) ;
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100, left: 100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: showpas,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "Password",
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpas) {
                                  showpas = false;
                                } else {
                                  showpas = true;
                                }
                              });
                            },
                            icon: Icon(showpas == true
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return "valid password";
                          } else {
                            return null;
                          }
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, left: 200),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          } else {
                            return null;
                          }
                        },
                        child: Text("Login")),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
