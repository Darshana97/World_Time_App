import 'package:flutter/material.dart';
import 'package:world_time_app/sevices/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void setupWorldTime() {
    WorldTime instance = WorldTime(
        location: 'Colombo', flag: 'srilanka.png', url: 'Asia/Colombo');
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
