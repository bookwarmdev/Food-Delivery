import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/auth/auth.dart';

class Onbording3Screen extends StatefulWidget {
  const Onbording3Screen({Key? key}) : super(key: key);

  @override
  _Onbording3ScreenState createState() => _Onbording3ScreenState();
}

class _Onbording3ScreenState extends State<Onbording3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('Onboard2Screen'),
      body: SafeArea(
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/images/Illustration2.png"),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Food Ninja is Where your \n Confort Food Lives',
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
                'Enjoy a fast and smooth delivery at \n your doorstep',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            GestureDetector(
              key: const Key("onbording3"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 60,
                  width: 157,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(
                        83,
                        232,
                        139,
                        1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      gradient: AppColor.authColor),
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
