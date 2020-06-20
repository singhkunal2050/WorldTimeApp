import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location
  String time; // time at that location
  String flag; // url to asset flag icon
  String url; // unique url for worldtime api
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  // Future is like promise in js and here im adding a future return type which tells the caller that it has to wait for the call
  // to resolve or reject
  // handling errors in case of api exception using try catch

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data['datetime'] + '\nTIME DIFF:: ' + data['utc_offset']);
      String hoffset = data['utc_offset'].substring(1, 3);
      String moffset = data['utc_offset'].substring(4, 6);

      // create a ddtetime obj and parsing a string to a an obj type
      DateTime now = DateTime.parse(data['datetime']);
      now = now.add(
          Duration(hours: int.parse(hoffset), minutes: int.parse(moffset)));

      isDaytime = now.hour>6 && now.hour<19 ? true : false ;

      // set a time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Error is ' + e);
      time = "could not find time";
    }
  }
}


// used intln for formatting date and time