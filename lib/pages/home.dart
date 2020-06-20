import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: Icon(
              Icons.gps_fixed,
              size: 30,
            ),
            label: Text(
              "Edit Location",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

// to avoid having wid in areas like notch not panel etc use
// safe area widget
// using intl package for dormatting date