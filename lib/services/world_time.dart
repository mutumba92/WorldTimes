import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  late String location;  // location name for the UI
  late String time;     // time in the location
  late String flag;     //url to asset image
  late String url;      // location url for api end point
  late bool isDaytime = true;  // determine background

  WorldTime(this.location, this.flag, this.url);


  Future<void> getTime() async {

    try{
      // make a request
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours:int.parse(offset)));


      // set the time property
      isDaytime = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print(e);
      time = 'could not get time';
    }



  }

}



