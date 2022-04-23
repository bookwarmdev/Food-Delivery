import 'package:flutter/material.dart';

class AppColor {
  static const kPrimary = Color(0xFF15BE77);
  static const kPrimaryTin = Color(0xFF53E88B);
  static const kPrimaryLigth = Color(0xFFE8F9F1);
  static const kSecondary = Color(0xFFDA6317);
  static const kSecondaryLight = Color(0xFFF9A84D);
  static const kblurColor = Color(0xFF5A6CEA);
  static const red = Color(0xFFFF4B4B);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const dark = Color(0xFF0D0D0D);
  static const darkContainer = Color(0xFF000000);
  static const grey = Color(0xFF808080);
  static const greyLight = Color(0xFFF3F3F6);
  static const authColor = LinearGradient(
    end: Alignment(-0.3, 0.0),
    colors: <Color>[
      AppColor.kPrimaryTin,
      AppColor.kPrimary,
    ],
  );

  static List<BoxShadow> appShadow = [
    BoxShadow(
      offset: const Offset(0, 5),
      spreadRadius: 0,
      color: kblurColor.withOpacity(0.1),
      blurRadius: 6.0,
    )
  ];

  static List<BoxShadow>? appShadowDark;

  static List<BoxShadow> appContanerShadow = [
    BoxShadow(
      offset: const Offset(0, 0),
      blurRadius: 50.0,
      spreadRadius: 0.0,
      color: AppColor.kblurColor.withOpacity(0.2),
    ),
  ];
    static List<BoxShadow>? appContanerShadowDark;

}
