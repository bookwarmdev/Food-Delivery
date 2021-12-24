import 'package:flutter/material.dart';
import 'package:food_delivery/views/onbording/onbording2_screen.dart'; 

class Onbording1Screen extends StatefulWidget {
  const Onbording1Screen({Key? key}) : super(key: key);

  @override
  _Onbording1Screen createState() => _Onbording1Screen();
}

class _Onbording1Screen extends State<Onbording1Screen> {
  @override
  void initState() {
    super.initState();
    navigateHome();
  }

  navigateHome() async {
    await Future.delayed(
      const Duration(milliseconds: 5000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Onbording2Screen(),
          ),
        );
      },
    );
  }

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
                  image: AssetImage("assets/images/Logo.png"),
                ),
                Text(
                  'Food Ninja',
                  style: TextStyle(
                      color: Colors.green, fontSize: 45, fontFamily: 'Viga'),
                ),
                Text(
                  'Deliver Favourite Food',
                  style: TextStyle(fontFamily: 'Inter'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
