// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'package:food_delivery/views/onbording/onbording1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo', home: const Onbording1Screen());
  }
}
