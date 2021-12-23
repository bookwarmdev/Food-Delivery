// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:food_delivery/views/auth/login_screen.dart';
import 'package:food_delivery/views/passwords/passwords.dart';

class ViaMethods extends StatefulWidget {
  const ViaMethods({Key? key}) : super(key: key);

  @override
  _ViaMethods createState() => _ViaMethods();
}

class _ViaMethods extends State<ViaMethods> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            body: Stack(children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/Patternn.png"),
                        fit: BoxFit.cover)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFFE0B2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Center(
                            child: Image(
                                image: AssetImage('assets/icons/Path.png'))),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 115, 0, 0),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'BentonSans_Bold',
                          fontSize: 30,
                          height: 1.2),
                      textAlign: TextAlign.left,
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Text(
                      'Select which contact details should we \nuse to reset your password',
                      style: TextStyle(fontSize: 15, height: 1.2),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Container(
                        height: 110,
                        width: 350,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                              child: Row(
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/Message.png')),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Via sms',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Text(
                                            '**** **** 6768',
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Container(
                        height: 110,
                        width: 350,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                              child: Row(
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/Email.png')),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Via email',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Text(
                                            '**** **** @gmail.com',
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Passwords(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 140,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(83, 232, 139, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Center(
                              child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}
