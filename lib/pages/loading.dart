import 'package:flutter/material.dart';
import 'package:WorldTimeApp/pages/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading........";

  void setupWorldTime() async {
    WorldTime wt =
        WorldTime(location: 'Mumbai', flag: 'india.png', url: 'Asia/Kolkata');
    await wt.getTime();
    print(wt.time);
    setState(() {
      time = wt.time;
    });
  }

  @override
  void initState() {
    super.initState();
    print("INIT RAN");
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            time,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
