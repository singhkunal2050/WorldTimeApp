import 'package:flutter/material.dart';

class Chooselocation extends StatefulWidget {
  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
 
  @override
  void initState() {
    super.initState();
    print("INIT RAN");
  }
 
  @override
  Widget build(BuildContext context) {
    print("build RAN");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Choose Location'),
        ),
        body: Text("Locationnnnnnnnn"),
      ),
    );
  }
}
