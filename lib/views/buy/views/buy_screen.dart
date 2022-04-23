import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/buy/views/confirm_order_screen.dart';
import 'package:food_delivery/views/buy/widget/order_list.dart';

double? totalPrice;

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
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
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.black
                        : AppColor.white,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width < 600
                      ? MediaQuery.of(context).size.height / 2
                      : MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width < 600
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width / 1.1,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemCount: orderList.order.length,
                    itemBuilder: (context, index) {
                      return OrderDtailsCard(
                        indexKey: Key(index.toString()),
                        imagePath: orderList.order[index].imagePath,
                        name: orderList.order[index].name,
                        title: orderList.order[index].title,
                        amount: orderList.order[index].amount,
                        onDismissed: (direction) {
                          try {
                            setState(() {
                              // orderList.order.removeAt(index);
                              debugPrint(
                                  '=========>>>> $index ===== $direction');
                            });
                          } catch (e) {
                            // print(e);
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width < 600
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width / 1.7,
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
                            '$totalPrice \$',
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
                              builder: (context) => const ConfirmOrderScreen(),
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
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDtailsCard extends StatefulWidget {
  final Key indexKey;
  final String imagePath;
  final String name;
  final String title;
  final int amount;
  final Function onDismissed;
  const OrderDtailsCard(
      {Key? key,
      required this.indexKey,
      required this.imagePath,
      required this.name,
      required this.title,
      required this.amount,
      required this.onDismissed})
      : super(key: key);

  @override
  _OrderDtailsCardState createState() => _OrderDtailsCardState();
}

class _OrderDtailsCardState extends State<OrderDtailsCard> {
  int itemNumber = 1;
  double totalItemAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    totalPrice = 100.00;

    totalItemAmount = widget.amount * itemNumber + 0.0;

    return Dismissible(
      key: widget.indexKey,
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
            child: Image.asset('assets/icons/trash.png'),
          ),
        ),
      ),
      onDismissed: (direction) {
        //TODO: working on dismissable error on the widget tre
        widget.onDismissed;
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? AppColor.white
              : AppColor.dark.withOpacity(0.4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(widget.imagePath),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: AppTextStyle.kTextHeader3.copyWith(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.black
                            : AppColor.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      widget.title,
                      style: AppTextStyle.kTextHeader4.copyWith(
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '\$${widget.amount}',
                      style: AppTextStyle.kTextHeader.copyWith(
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
                      itemNumber <= 1 ? itemNumber = 1 : itemNumber--;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? AppColor.kPrimaryLigth
                          : AppColor.kPrimary.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Image.asset(
                        'assets/icons/subtract.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text('$itemNumber'),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      itemNumber++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColor.kPrimary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 11.0,
                      ),
                      child: Image.asset(
                        'assets/icons/addtion.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
