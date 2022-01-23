import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  _ShippingScreenState createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
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
                    titel: 'Shipping',
                    function: () => Navigator.pop(context),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 50.0,
                          spreadRadius: 0.0,
                          color: AppColor.kblurColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Location',
                          style: AppTextStyle.kTextHeader4.copyWith(
                            color: AppColor.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/Pinlogo.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Text(
                                '4517 Washington Ave. Manchester, Kentucky 39495',
                                style: AppTextStyle.kTextHeader3.copyWith(
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.clip,
                                  fontSize: 15.0,
                                  height: 1.3,

                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 50.0,
                          spreadRadius: 0.0,
                          color: AppColor.kblurColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Location',
                          style: AppTextStyle.kTextHeader4.copyWith(
                            color: AppColor.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/Pinlogo.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Text(
                                '4517 Washington Ave. Manchester, Kentucky 39495',
                                style: AppTextStyle.kTextHeader3.copyWith(
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.clip,
                                  fontSize: 15.0, 
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),  
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'set location',
                            style: AppTextStyle.kTextHeader4.copyWith(
                              color: AppColor.kPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
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
