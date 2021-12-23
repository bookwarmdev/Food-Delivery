import 'package:flutter/material.dart';
import 'package:food_delivery/views/auth/login_screen.dart';
import 'package:food_delivery/views/auth/signup_screen.dart';
import 'package:food_delivery/views/home/views/home_screen.dart';
import 'package:food_delivery/views/passwords/via_methods.dart';
import 'package:food_delivery/views/onbording/onbording1_screen.dart';
import 'package:food_delivery/views/auth/signup_success.dart';
import 'package:food_delivery/views/passwords/passwords.dart';
import 'package:food_delivery/views/passwords/success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: Success());
  }
}
