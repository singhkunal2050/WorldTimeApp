import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // location
  String time; // time at that location
  String flag; // url to asset flag icon
  String url; // unique url for worldtime api

  WorldTime({this.location , this.flag , this.url});

  // Future is like promise in js and here im adding a future return type which tells the caller that it has to wait for the call 
  // to resolve or reject
  
  
  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    // print(data['datetime'] + '\nTIME DIFF:: ' + data['utc_offset']);
    String hoffset = data['utc_offset'].substring(1, 3);
    String moffset = data['utc_offset'].substring(4, 6);
 
    // create a ddtetime obj and parsing a string to a an obj type
    DateTime now = DateTime.parse(data['datetime']);
    now = now
        .add(Duration(hours: int.parse(hoffset), minutes: int.parse(moffset)));
   
    // set a time property
    time = now.toString();
  }
}

