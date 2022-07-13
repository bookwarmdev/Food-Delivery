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
      body: SafeArea(
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/images/Illustartion1.png"),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
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
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            GestureDetector(
              key: const Key('onbording2'),
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
