import 'package:flutter/material.dart';
// import './pages/home.dart';
import 'package:WorldTimeApp/pages/home.dart';

void main() => runApp(WorldTimeApp());

class WorldTimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}



// new way for importing using packages