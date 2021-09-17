import 'package:flutter/material.dart';
import 'package:sanzar_new/home.dart';

void main() {
  runApp(s());
}

class s extends StatelessWidget {
  const s({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:homepage() );
  }
}
