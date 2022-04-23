import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'onbording.dart';

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
    return AuthBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/Logo.png"),
            ),
            const Text(
              'Food Ninja',
              style: AppTextStyle.kBrandHeader,
            ),
            Text(
              'Deliver Favourite Food',
              style: AppTextStyle.kBrandText.copyWith(
                color: (MediaQuery.of(context).platformBrightness ==
                        Brightness.light)
                    ? AppColor.black
                    : AppColor.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
