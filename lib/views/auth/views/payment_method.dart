import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import '../auth.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethod createState() => _PaymentMethod();
}

class _PaymentMethod extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(function: () => Navigator.pop(context), titel: ''),
            const Text(
              'Payment Method',
              style: TextStyle(
                fontFamily: 'BentonSans_Bold',
                fontSize: 25,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              'This data will be displayed in your account \naccount profile for security',
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 70,
                      width: 350,
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
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Image(
                          image: (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? const AssetImage(
                                  'assets/images/paypal.png',
                                )
                              : const AssetImage(
                                  'assets/images/paypal1.png',
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 70,
                      width: 350,
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
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Image(
                          image: (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? const AssetImage(
                                  'assets/images/visa.png',
                                )
                              : const AssetImage(
                                  'assets/images/visa1.png',
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 70,
                      width: 350,
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
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Image(
                          image: (MediaQuery.of(context).platformBrightness ==
                                  Brightness.light)
                              ? const AssetImage(
                                  'assets/images/Payoneer.png',
                                )
                              : const AssetImage(
                                  'assets/images/Payoneer1.png',
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UploadPicture(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 157,
                    decoration: const BoxDecoration(
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
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
