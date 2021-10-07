import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/moving_re_pipp.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name", labelText: "User Name"),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("dsdsdsd");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                )
              ]),
            )
          ],
        ));
  }
}
