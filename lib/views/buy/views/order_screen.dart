import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/views/buy/views/location.dart';
import 'package:food_delivery/views/buy/widget/order_list.dart';
import 'package:food_delivery/views/home/views/filter_screen.dart';
import 'package:food_delivery/views/home/widget/favorite_food.dart';
import 'package:food_delivery/views/home/widget/search.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  OrderList orderList = OrderList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const FavoriteFood(),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Search(),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FilterScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: AppColor.kSecondaryLight.withOpacity(0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset('assets/svgs/Filter.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.9,
                  child: ListView.builder(
                      itemCount: orderList.order.length,
                      itemBuilder: (context, index) {
                        return Container(
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
                                        style:
                                            AppTextStyle.kTextHeader4.copyWith(
                                          color: AppColor.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        '\$ $orderList.order[index].amount',
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
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  gradient: const LinearGradient(
                                    end: Alignment(-0.3, 0.0),
                                    colors: <Color>[
                                      AppColor.kPrimaryTin,
                                      AppColor.kPrimary,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Proccess',
                                    style: AppTextStyle.kTextHeader4.copyWith(
                                      color: AppColor.white,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: AuthButton(
                title: 'Check Out',
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const LocationScreen())),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
