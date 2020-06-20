import 'package:flutter/material.dart';
import 'package:WorldTimeApp/pages/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime wt = WorldTime(
      location: 'Mumbai',
      flag: 'india.png',
      url: 'Asia/Kolkata',
    );
    await wt.getTime();

    // routing to home
    // passsing paramaeters b|w screen through argument

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location':wt.location,
      'flag':wt.flag,
      'url':wt.url,
      'time':wt.time
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
        backgroundColor: Colors.blue[800],
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
