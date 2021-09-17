import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SanzarApp"),
      ),
      body: Center(
        child: Container(
          child: Text("my   f  dffapp"),
        ),
      ),
      drawer: Drawer( ),
    );
  }
}
