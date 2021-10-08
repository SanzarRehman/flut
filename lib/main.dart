import 'package:flutter/material.dart';
import 'package:sanzar_new/home.dart';
import 'package:sanzar_new/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanzar_new/utilis/route.dart';

void main() {
  runApp(s());
}

class s extends StatelessWidget {
  const s({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primaryTextTheme: GoogleFonts.lateefTextTheme(),
          brightness: Brightness.light),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
