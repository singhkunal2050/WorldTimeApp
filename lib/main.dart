import 'package:flutter/material.dart';
import 'package:WorldTimeApp/pages/chooselocation.dart';
import 'package:WorldTimeApp/pages/home.dart';
import 'package:WorldTimeApp/pages/loading.dart';

void main() => runApp(WorldTimeApp());

class WorldTimeApp extends StatefulWidget {
  @override
  _WorldTimeAppState createState() => _WorldTimeAppState();
}

class _WorldTimeAppState extends State<WorldTimeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => Chooselocation(),
      },
    );
  }
}

// new way for importing using packages
// routing in flutter
// routes work with stack ds