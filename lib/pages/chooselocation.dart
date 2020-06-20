import 'package:WorldTimeApp/pages/services/world_time.dart';
import 'package:flutter/material.dart';

class Chooselocation extends StatefulWidget {
  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  int c = 0;

  List locations = [
    WorldTime(flag: 'india.png', location: 'India', url: 'Asia/Kolkata'),
    WorldTime(flag: 'brazil.png', location: 'Brazil', url: 'America/Santiago'),
    WorldTime(flag: 'swiss.png', location: 'Switzerland', url: 'Pacific/Funafuti'),
    WorldTime(flag: 'japan.png', location: 'Japan', url: 'Asia/Yangon'),
    WorldTime(flag: 'israel.png', location: 'Israel', url: 'Asia/Jerusalem'),
    WorldTime(flag: 'australia.png', location: 'Australia', url: 'Australia/Sydney'),
    WorldTime(flag: 'spain.png', location: 'Spain', url: 'Europe/Berlin'),
    WorldTime(flag: 'canada.png', location: 'Canada', url: 'America/Regina'),
    WorldTime(flag: 'belgium.png', location: 'Belgium', url: 'Europe/Brussels'),
  ];

  @override
  Widget build(BuildContext context) {
    // print("build RAN");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text('Choose Location'),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/${locations[index].flag}'),),
                  title: Text(locations[index].location),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
