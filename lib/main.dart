import 'package:flutter/material.dart';
import 'package:sanzar_new/home.dart';
import 'package:sanzar_new/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
        primaryTextTheme: GoogleFonts.lateefTextTheme() ,
        brightness: Brightness.light),
      initialRoute: "/login",
      routes: {
        "/": (context) => homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
