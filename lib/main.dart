import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_clock/choose_location_screen.dart';

void main() {
  List countries = [
   (url: 'welcome',text:'text of first'),
   (hello: 'how are you'),
  ];
  print(countries[0].url);
  runApp(const GetMaterialApp(home: location()));
}
