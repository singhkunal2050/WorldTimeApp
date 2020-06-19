import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    print("INIT RAN");
    getTime();
  }

  void getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
    Map data = jsonDecode(response.body);
    // print(data['datetime'] + '\nTIME DIFF:: ' + data['utc_offset']);
    String offset = data['utc_offset'].substring(1,3);
    print(offset);

    // create a ddtetime obj and parsing a string to a an obj type
    DateTime now = DateTime.parse(data['datetime']);
    now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          "Loading",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
