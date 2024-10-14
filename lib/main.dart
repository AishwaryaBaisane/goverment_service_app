import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goverment_service_app/screen/Day2/WebScreen.dart';
import 'package:goverment_service_app/screen/day1.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day1(),
    );
  }
}