import 'package:flutter/material.dart';

void main() => runApp(WorldTimeApp());

class WorldTimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WOrldTime"),
          centerTitle: true,
        ),
        body: Container(
          child: Text("data"),
        ),
      ),
    );
  }
}
