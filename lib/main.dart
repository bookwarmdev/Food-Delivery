import 'package:flutter/material.dart';
import 'views/onbording/onbording.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.light().copyWith(),
      darkTheme: ThemeData.dark().copyWith(),
      title: 'Food Ninja',
      home: const Onbording1Screen(),
    );
  }
}
