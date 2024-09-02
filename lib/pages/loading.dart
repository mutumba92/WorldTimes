import 'package:flutter/material.dart';
import 'package:world_timess/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setUpWorldTime() async {
    WorldTime instance = WorldTime('Berlin', 'germany.png', 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }

  @override
  void initState() {

    super.initState();
    setUpWorldTime();


  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitThreeInOut(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
