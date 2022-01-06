import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  final items = List<String>.generate(2, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryLigth,
      body: SafeArea(
        child: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return Dismissible(
                            // Each Dismissible must contain a Key. Keys allow Flutter to
                            // uniquely identify widgets.
                            key: Key(item),
                            // Provide a function that tells the app
                            // what to do after an item has been swiped away.
                            onDismissed: (direction) {
                              // Remove the item from the data source.
                              setState(() {
                                items.removeAt(index);
                              });

                              // Then show a snackbar.
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('$item dismissed')));
                            },
                            secondaryBackground: Container(
                              color: Colors.blue,
                              child: const Center(
                                child: Text(
                                  'Delete',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ), 
                            ),
                                    direction: DismissDirection.endToStart,
                            // Show a red background as the item is swiped away.
                            background: Container(color: Colors.red),
                            child: ListTile(
                              title: Text(item),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: AppColor.kPrimary),
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
                      Container(
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
                      )
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
