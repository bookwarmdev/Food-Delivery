import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class AppTextStyle {
  static const kTextHeader = TextStyle(
    fontSize: 40.0,
    fontFamily: 'BentonSans_Regular', 
    fontWeight: FontWeight.bold, 
  );

  static const kTextHeader2 = TextStyle(
    fontSize: 25.0,
    fontFamily: 'BentonSans_Regular',
    color: AppColor.black,
  );

  static const kTextHeader3 = TextStyle(
    fontSize: 15.0,
    fontFamily: 'BentonSans_Regular',
    color: AppColor.black,
    fontWeight: FontWeight.bold, 
  );

  static const kTextHeader4 = TextStyle(
    fontSize: 13.0,
    fontFamily: 'BentonSans_Regular',
    color: AppColor.kSecondary,
  );
}
