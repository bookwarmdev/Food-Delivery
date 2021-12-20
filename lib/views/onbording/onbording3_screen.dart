import 'package:flutter/material.dart';
import 'package:food_delivery/views/onbording/onbording1_screen.dart';
import 'package:food_delivery/views/onbording/onbording2_screen.dart';

class onbording3Screen extends StatefulWidget {
  const onbording3Screen({Key? key}) : super(key: key);

  @override
  _onbording3ScreenState createState() => _onbording3ScreenState();
}

class _onbording3ScreenState extends State<onbording3Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/illustration.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Food Ninja is Where your \n Confort Food Lives',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BentonSans Medium',
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Enjoy a fast and smooth delivery at \n your doorstep',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, letterSpacing: 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 60,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(83, 232, 139, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
