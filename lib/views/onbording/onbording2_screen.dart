import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart'; 
import 'onbording.dart';

class Onbording2Screen extends StatefulWidget {
  const Onbording2Screen({Key? key}) : super(key: key);

  @override
  _Onbording2ScreenState createState() => _Onbording2ScreenState();
}

class _Onbording2ScreenState extends State<Onbording2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Illustartion1.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Find your Comfort \n Food here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BentonSans Medium',
                  fontSize: 25,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Here you can find a Chef for every \n taste and color. Enjoy!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, letterSpacing: 1.5),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Onbording3Screen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 60,
                  width: 157,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: AppColor.authColor,
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: AppTextStyle.kTextHeader3.copyWith(
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
