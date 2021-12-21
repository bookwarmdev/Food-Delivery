import 'package:flutter/material.dart';
import 'package:food_delivery/views/auth/login_screen.dart';

class Onbording3Screen extends StatefulWidget {
  const Onbording3Screen({Key? key}) : super(key: key);

  @override
  _Onbording3ScreenState createState() => _Onbording3ScreenState();
}

class _Onbording3ScreenState extends State<Onbording3Screen> {
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
                  image: AssetImage("assets/images/Illustration2.png"),
                  fit: BoxFit.cover)),
        ),
        const Padding(
          padding:  EdgeInsets.only(top: 30),
          child: Text(
            'Food Ninja is Where your \n Confort Food Lives',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'BentonSans Medium',
                fontSize: 25),
          ),
        ),
       const Padding(
          padding:  EdgeInsets.only(top: 25),
          child: Text(
            'Enjoy a fast and smooth delivery at \n your doorstep',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, letterSpacing: 1.5),
          ),
        ),
        GestureDetector(
          onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LogInScreen(),),);
            },
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 60,
              width: 140,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(83, 232, 139, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
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
        )
      ],
    ),
      ),
    );
  }
}
