import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
