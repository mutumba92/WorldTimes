import 'package:flutter/material.dart';
import 'package:world_timess/pages/choose_location.dart';
import 'package:world_timess/pages/experiment.dart';
import 'package:world_timess/pages/home.dart';
import 'package:world_timess/pages/loading.dart';
import 'package:world_timess/pages/routes.dart';

void main() {
  runApp(
     MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Loading(),
        '/home' : (context) => const Home(),
        '/location' : (context) => const ChooseLocation(),
        '/experiment' : (context) => const Experiment(),
        '/routes' : (context) => const TheRoutes(),

      },
    )
  );
}

