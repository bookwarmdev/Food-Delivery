import 'package:flutter/material.dart';
import 'package:food_delivery/views/productsdetails/dmscrollmode.dart';
import 'package:food_delivery/views/productsdetails/detail_menu.dart';
import 'package:food_delivery/views/profile/pscrollmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: pscrollmode());
  }
}
