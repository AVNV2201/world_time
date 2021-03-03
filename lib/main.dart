import 'package:flutter/material.dart';
import 'package:world_time/screens/choose_loaction.dart';
import 'package:world_time/screens/home.dart';
import 'package:world_time/screens/loading_data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => LoadingData(),
      '/home' : (context) => Home(),
      '/locationlist': (context) => ChooseLocation(),
    },
  ));
}