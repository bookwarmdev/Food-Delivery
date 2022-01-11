
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart'; 
import 'package:food_delivery/views/buy/views/confirm_order_screen.dart';
import 'package:food_delivery/views/buy/widget/order_list.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  int product_number = 1;
  OrderList orderList = OrderList(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Background(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Order details',
                  style: AppTextStyle.kTextHeader2.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: orderList.order.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key(index.toString()),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: AppColor.kSecondaryLight,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/icons/trash.png')),
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            orderList.order.removeAt(index);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: AppColor.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(orderList.order[index].imagePath),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        orderList.order[index].name,
                                        style: AppTextStyle.kTextHeader3
                                            .copyWith(),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        orderList.order[index].title,
                                        style: AppTextStyle.kTextHeader4
                                            .copyWith(
                                          color: AppColor.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        orderList.order[index].amount,
                                        style:
                                            AppTextStyle.kTextHeader.copyWith(
                                          color: AppColor.kPrimary,
                                          fontSize: 19.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        product_number <= 0
                                            ? product_number = 0
                                            : product_number--;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: AppColor.kPrimaryLigth),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 20.0),
                                        child: Image.asset(
                                            'assets/icons/subtract.png'),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Text('$product_number'),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        product_number++;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: AppColor.kPrimary),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 15.0),
                                        child: Image.asset(
                                            'assets/icons/addtion.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppColor.kPrimary,
                  image: const DecorationImage(
                    image:  AssetImage('assets/images/Pattern_order.png'), 
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
                    const SizedBox(height: 5.0,),
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
                    const SizedBox(height: 5.0,),

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
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmOrderScreen()));
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
    );
  }
}
