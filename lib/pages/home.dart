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
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color txtColor = data['isDaytime'] ? Colors.black : Colors.blue[50]; 

    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                  Icons.gps_fixed,
                  size: 30,
                  color: txtColor,
                ),
                label: Text(
                  "Edit Location",
                  style: TextStyle(
                    fontSize: 20,
                    color: txtColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: txtColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 60,
                  color: txtColor,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

// to avoid having wid in areas like notch not panel etc use
// safe area widget
// using intl package for dormatting date
