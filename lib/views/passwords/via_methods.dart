import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/passwords/passwords.dart';

class ViaMethods extends StatefulWidget {
  const ViaMethods({Key? key}) : super(key: key);

  @override
  _ViaMethods createState() => _ViaMethods();
}

class _ViaMethods extends State<ViaMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigateBack(function: () => Navigator.pop(context), titel: ''),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'BentonSans_Bold',
                    fontSize: 25,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Select which contact details should we \nuse to reset your password',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15.0,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.appShadow
                          : AppColor.appShadowDark,
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.white
                          : AppColor.darkContainer.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/Message.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Via sms',
                                    style: AppTextStyle.kBrandText.copyWith(
                                      color: (MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light)
                                          ? AppColor.grey
                                          : AppColor.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      '**** **** 6768',
                                      style: AppTextStyle.kTextHeader2.copyWith(
                                        fontSize: 16.0,
                                        color: (MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light)
                                            ? AppColor.black
                                            : AppColor.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: (MediaQuery.of(context).platformBrightness ==
                            Brightness.light)
                        ? AppColor.appShadow
                        : AppColor.appShadowDark,
                    color: (MediaQuery.of(context).platformBrightness ==
                            Brightness.light)
                        ? AppColor.white
                        : AppColor.darkContainer.withOpacity(0.4),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/images/Email.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Via email',
                                  style: AppTextStyle.kBrandText.copyWith(
                                    color: (MediaQuery.of(context)
                                                .platformBrightness ==
                                            Brightness.light)
                                        ? AppColor.grey
                                        : AppColor.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    '**** **** @gmail.com',
                                    style: AppTextStyle.kTextHeader2.copyWith(
                                      fontSize: 16.0,
                                      color: (MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light)
                                          ? AppColor.black
                                          : AppColor.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Passwords(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 157,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(83, 232, 139, 1),
                      gradient: AppColor.authColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
