import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavigateBack(
                    titel: 'Payment ',
                    function: () => Navigator.pop(context),
                  ),
                  const PaymentCard(
                    imagePath: 'assets/images/paypal.png',
                    imagePathDark: 'assets/images/paypal1.png',
                    text: '2121 6352 8465 12345',
                  ),
                  const PaymentCard(
                    imagePath: 'assets/images/visa1.png',
                    imagePathDark: 'assets/images/visa1.png',
                    text: '2121 6352 8465 12345',
                  ),
                  const PaymentCard(
                    imagePath: 'assets/images/Payoneer.png',
                    imagePathDark: 'assets/images/Payoneer1.png',
                    text: '2121 6352 8465 12345',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    required this.imagePath,
    required this.imagePathDark,
    required this.text,
  }) : super(key: key);

  final String imagePath;
  final String imagePathDark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? AppColor.white
            : AppColor.dark.withOpacity(0.4),
        boxShadow: MediaQuery.of(context).platformBrightness == Brightness.light
            ? [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 50.0,
                  spreadRadius: 0.0,
                  color: AppColor.kblurColor.withOpacity(0.2),
                ),
              ]
            : AppColor.appContanerShadowDark,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? imagePath
                : imagePathDark,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              text,
              style: AppTextStyle.kTextHeader3.copyWith(
                fontWeight: FontWeight.normal,
                overflow: TextOverflow.ellipsis,
                fontSize: 14.0,
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? AppColor.black
                    : AppColor.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
