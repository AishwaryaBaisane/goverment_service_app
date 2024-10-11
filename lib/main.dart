import 'package:flutter/material.dart';
import 'package:goverment_service_app/screen/day1.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day1(),
    );
  }
}