import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //the time in that location
  String flag; //url to the asset flag icon
  String url; //location url for api endpoint

  void getTime() async {
    //make the request
    Response response =
        await get("http://worldtimeapi.org/api/timezone/Asia/$url");
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

    //set the time property
    time = now.toString();
  }
}
