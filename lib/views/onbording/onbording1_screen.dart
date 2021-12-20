import 'package:flutter/material.dart';
import 'package:food_delivery/views/onbording/onbording2_screen.dart';

class Onbording1Screen extends StatefulWidget {
  Onbording1Screen({Key? key}) : super(key: key);

  @override
  _Onbording1Screen createState() => _Onbording1Screen();
}

class _Onbording1Screen extends State<Onbording1Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Pattern.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/images/Logo.png")),
                        Text('Food Ninja',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 45,
                                fontFamily: 'Viga')),
                        Text('Deliver Favourite Food',
                            style: TextStyle(fontFamily: 'Inter'))
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
