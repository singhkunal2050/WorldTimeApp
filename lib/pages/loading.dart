import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
    print(response.body);
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
