import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import '../auth.dart';

class SignSuccess extends StatefulWidget {
  const SignSuccess({Key? key}) : super(key: key);

  @override
  _SignSuccessState createState() => _SignSuccessState();
}

class _SignSuccessState extends State<SignSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage(
                      "assets/images/Illustration.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Congrats',
                      style: TextStyle(
                        color: AppColor.kPrimary,
                        fontSize: 30,
                        fontFamily: 'BentonSans_Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Your Profile is ready to Use',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'BentonSans_Bold',
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Verification(),
                  ),
                );
              },
              child: Container(
                height: 60,
                width: 157,
                margin: const EdgeInsets.only(
                  bottom: 40.0,
                ),
                decoration: const BoxDecoration(
                  gradient: AppColor.authColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Try Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
