import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    //make the request
    Response response =
        await get("http://worldtimeapi.org/api/timezone/Asia/Colombo");
    Map data = jsonDecode(response.body);
//   print(data);

    //get propertise from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
//    print(datetime);
//    print(offset);

    //create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getTime();
    print("hey! there");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("My loading"),
    );
  }
}
