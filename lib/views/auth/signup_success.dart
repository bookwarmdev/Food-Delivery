import 'package:flutter/material.dart';
import 'package:food_delivery/views/auth/verification.dart';

class SignSuccess extends StatefulWidget {
  const SignSuccess({Key? key}) : super(key: key);

  @override
  _SignSuccessState createState() => _SignSuccessState();
}

class _SignSuccessState extends State<SignSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Pattern.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage("assets/images/Illustration.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Congrats',
                    style: TextStyle(
                        color: Color.fromRGBO(83, 232, 139, 1),
                        fontSize: 45,
                        fontFamily: 'BentonSans_Bold'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Your Profile is ready to Use',
                    style:
                        TextStyle(fontSize: 25, fontFamily: 'BentonSans_Bold'),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Verification(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 550),
              child: Center(
                child: Container(
                  height: 60,
                  width: 140,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(83, 232, 139, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Center(
                      child: Text(
                    'Try Order',
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
      ),
    );
  }
}
