import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (MediaQuery.of(context).platformBrightness == Brightness.light)
              ? AppColor.white
              : AppColor.dark,
      body: Stack(
        children: [
          (MediaQuery.of(context).platformBrightness == Brightness.light)
              ? Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Pattern.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Pattern1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(child: child),
            ),
          ),
        ],
      ),
    );
  }
}
