import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
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
        child: Column(
          children: [
            Expanded(
              // flex: 1,
              child: SingleChildScrollView(
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
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.black
                            : AppColor.white,
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
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.black
                            : AppColor.white,
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
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.black
                            : AppColor.white,
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
            ),
            Visibility(
              visible:
                  MediaQuery.of(context).viewInsets.bottom == 0 ? true : false,
              child: Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                child: AuthButton(
                  title: 'Search',
                  onTap: () => Navigator.pop(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
