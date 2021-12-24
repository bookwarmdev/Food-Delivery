import 'package:flutter/material.dart';
import 'package:food_delivery/views/auth/login_screen.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _Success createState() => _Success();
}

class _Success extends State<Success> {
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
                    'Password Reset Successful',
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
                  builder: (context) => const LogInScreen(),
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
                    'Back',
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
