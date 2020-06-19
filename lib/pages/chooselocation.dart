import 'package:flutter/material.dart';

class Chooselocation extends StatefulWidget {
  @override
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  int c = 0;

  void getData(){
    // like setaTimeout
    // simulating network request 
    Future.delayed(Duration(seconds: 3), () {
      print("ksr");
    });
    print('mns first');
  }


  @override
  void initState() {
    super.initState();
    print("INIT RAN");
    getData();
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
        body: RaisedButton(
          onPressed: () {
            setState(() {
              c = c + 1;
            });
          },
          child: Center(
            child: Text(
              "C is ${c}",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
