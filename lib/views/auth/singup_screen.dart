import 'package:flutter/material.dart';
import 'package:food_delivery/utils/fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(child: Text('You can start boss', style: AppTextStyle.kTextHeader,)),
    );
  }
}