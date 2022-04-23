import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/buy/views/order_screen.dart';
import 'package:food_delivery/views/buy/views/payment_screen.dart';
import 'package:food_delivery/views/buy/views/shipping_screen.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  _ConfirmOrderScreenState createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavigateBack(
                    titel: 'Confirm Order',
                    function: () => Navigator.pop(context),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? AppColor.white
                          : AppColor.dark.withOpacity(0.4),
                      boxShadow: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deliver To',
                              style: AppTextStyle.kTextHeader4.copyWith(
                                color: AppColor.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ShippingScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Edit',
                                style: AppTextStyle.kTextHeader4.copyWith(
                                  color: AppColor.kPrimary,
                                ),
                              ),
                            ),
                          ],
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
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.clip,
                                  fontSize: 15.0,
                                  height: 1.3,
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? AppColor.black
                                      : AppColor.white,
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
                        horizontal: 10.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? AppColor.white
                          : AppColor.dark.withOpacity(0.4),
                      boxShadow: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment Method',
                              style: AppTextStyle.kTextHeader4.copyWith(
                                color: AppColor.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PaymentScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Edit',
                                style: AppTextStyle.kTextHeader4.copyWith(
                                  color: AppColor.kPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? 'assets/images/paypal.png'
                                    : 'assets/images/paypal1.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                '2121 6352 8465 12345',
                                style: AppTextStyle.kTextHeader3.copyWith(
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20.0,
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? AppColor.black
                                      : AppColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppColor.kPrimary,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Pattern_order.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub-Total',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '120 \$',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivey Charge',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '10 \$',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '20 \$',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                          Text(
                            '150 \$',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderScreen(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Center(
                              child: Text(
                                'Place My Order',
                                style: AppTextStyle.kTextHeader3.copyWith(
                                  fontSize: 18.0,
                                  color: AppColor.kPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
