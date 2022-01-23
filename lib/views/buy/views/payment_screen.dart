import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                  const SizedBox(height: 20.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.greyLight,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 50.0,
                          spreadRadius: 0.0,
                          color: AppColor.kblurColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/visa.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            '2121 6352 8465 12345',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.grey,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.greyLight,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 50.0,
                          spreadRadius: 0.0,
                          color: AppColor.kblurColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Payoneer.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            '2121 6352 8465 12345',
                            style: AppTextStyle.kTextHeader3.copyWith(
                              color: AppColor.grey,

                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
