import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/buy/views/payment_screen.dart';
import 'package:food_delivery/views/buy/views/shipping_screen.dart';
import 'package:food_delivery/views/home/widget/notification_list.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  _ConfirmOrderScreenState createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  final NoificationList _noificationList = NoificationList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigateBack(
                titel: 'Confirm Order',
                function: () => Navigator.pop(context),
              ),
              const SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingScreen(),),);

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
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.clip,
                                fontSize: 15.0,
                                  height: 1.3,

                                ),
                          ),
                        )
                      ],
                    ),
                        const SizedBox(height: 10.0,),

                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen(),),);
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
                        Image.asset('assets/images/paypal.png'),  
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            '2121 6352 8465 12345',
                            style: AppTextStyle.kTextHeader3.copyWith(
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                        const SizedBox(height: 10.0,),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
