import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/views/home/widget/favorite_food.dart';
import 'package:food_delivery/views/home/widget/search.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FavoriteFood(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Search(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Type',
                    style: AppTextStyle.kTextHeader3.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      FilterMenu(title: 'Restaurant'),
                      SizedBox(
                        width: 15.0,
                      ),
                      FilterMenu(title: 'Menu'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Location',
                    style: AppTextStyle.kTextHeader3.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      FilterMenu(title: '1 Km'),
                      SizedBox(
                        width: 10.0,
                      ),
                      FilterMenu(title: '>10 Km'),
                      SizedBox(
                        width: 10.0,
                      ),
                      FilterMenu(
                        title: '<10 Km',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Food',
                    style: AppTextStyle.kTextHeader3.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      FilterMenu(title: 'Cake'),
                      SizedBox(
                        width: 15.0,
                      ),
                      FilterMenu(title: 'Soup'),
                      SizedBox(
                        width: 15.0,
                      ),
                      FilterMenu(title: 'Main Course'),
                      SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      FilterMenu(title: 'Appetizer'),
                      SizedBox(
                        width: 15.0,
                      ),
                      FilterMenu(title: 'Dessert'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 22.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                  'Search',
                  style: AppTextStyle.kTextHeader3.copyWith(
                    color: AppColor.white,
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

class FilterMenu extends StatelessWidget {
  final String title;

  const FilterMenu({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.kSecondaryLight.withOpacity(0.1),
      ),
      child: Center(
        child: Text(
          title,
          style: AppTextStyle.kTextHeader4.copyWith(),
        ),
      ),
    );
  }
}
