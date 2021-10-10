import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sanzar_new/utilis/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool cngButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.blueGrey[800]),
                  child: Center(
                    child: Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "sss",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Material(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.circular(cngButton ? 50 : 8),
                            child: InkWell(
                              onTap: () async {
                                Navigator.pushNamed(
                                    context, MyRoutes.homeRoute);
                              },
                              child: Container(
                                width: cngButton ? 50 : 140,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Material(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(cngButton ? 50 : 8),
                            child: InkWell(
                              onTap: () async {
                                Navigator.pushNamed(
                                    context, MyRoutes.homeRoute);
                              },
                              child: Container(
                                width: cngButton ? 50 : 140,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Text(
                "Welcome $name ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  TextField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(cngButton ? 50 : 8),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          cngButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 900),
                        width: cngButton ? 50 : 140,
                        height: 50,
                        alignment: Alignment.center,
                        child: cngButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  )

                  //ElevatedButton(
                  //  onPressed: () {
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);

                  //  },
                  // child: Text("Login"),
                  //  style: TextButton.styleFrom(
                  //      padding: const EdgeInsets.all(18.0),
                  //      minimumSize: Size(140, 50),
                  //      backgroundColor: Colors.purple),
                  //)
                ]),
              )
            ],
          ),
        ));
  }
}
