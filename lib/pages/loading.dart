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
    getData();
  }

  void getData() async {
    Response response = await get('https://lotuspolyservices.000webhostapp.com/api/read_single.php?id=3');
    Map data = jsonDecode(response.body); 
    print(data['id']);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("Loading"),
      ),
    );
  }
}
