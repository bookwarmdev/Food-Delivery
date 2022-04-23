import 'package:flutter/material.dart';
 import 'package:food_delivery/utils/ui.dart';
 import 'package:food_delivery/views/auth/auth.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _Success createState() => _Success();
}

class _Success extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: const [
                Image(
                  image: AssetImage("assets/images/Illustration.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Congrats',
                    style: TextStyle(
                      color: AppColor.kPrimary,
                      fontSize: 45,
                      fontFamily: 'BentonSans_Bold',
                    ),
                  ),
                ),
                Text(
                  'Password Reset Successful',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'BentonSans_Bold',
                  ),
                )
              ],
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
              child: Container(
                height: 60,
                width: 140,
                margin: const EdgeInsets.only(bottom: 50.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(83, 232, 139, 1),
                  gradient: AppColor.authColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Continue',
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
