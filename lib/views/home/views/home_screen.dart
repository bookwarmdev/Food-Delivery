import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/home/views/filter_screen.dart';
import 'package:food_delivery/views/home/views/menu_screen.dart';
import 'package:food_delivery/views/home/views/restaurant_screen.dart';
import 'package:food_delivery/views/home/widget/favorite_food.dart';
import 'package:food_delivery/views/home/widget/menu_list.dart';
import 'package:food_delivery/views/home/widget/resturant_list.dart';
import 'package:food_delivery/views/home/widget/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ResturantList _resturantList = ResturantList();
  final MenuList _menuList = MenuList();
  @override
  Widget build(BuildContext context) {
    return Background( 
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FavoriteFood(),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const Expanded(child:  Search(),),
              const SizedBox(
                width: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterScreen(),),);
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
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/PromoAdvertising.png'),
              ),
            ),
            height: 150,
            child: Stack(
              children: [
                Positioned(
                  right: 15.0,
                  top: 30.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Deal For \nOctober',
                        style: AppTextStyle.kTextHeader2.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0, 
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: AppTextStyle.kTextHeader4.copyWith(
                            color: AppColor.kPrimary,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Nearest Restaurant',
                style: AppTextStyle.kTextHeader3,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResturantScreen(),
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: AppTextStyle.kTextHeader4.copyWith(
                    color: AppColor.kSecondaryLight,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 184,
            child: ListView.builder(
              itemCount: _resturantList.restureant.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(12, 26),
                            spreadRadius: 0,
                            color: AppColor.kPrimaryLigth,
                            blurRadius: 60.0,
                          )
                        ],
                        color: AppColor.white,
                      ),
                      width: 147.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              _resturantList.restureant[index].imagePath),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            _resturantList.restureant[index].name,
                            style: AppTextStyle.kTextHeader2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${_resturantList.restureant[index].time} Mins',
                            style: AppTextStyle.kTextHeader4
                                .copyWith(color: AppColor.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Menu',
                style: AppTextStyle.kTextHeader3,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuScreen(),
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: AppTextStyle.kTextHeader4.copyWith(
                    color: AppColor.kSecondaryLight,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: _menuList.menu.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(12, 26),
                            spreadRadius: 0,
                            color: AppColor.kblurColor.withOpacity(0.1),
                            blurRadius: 50.0,
                          )
                        ],
                        color: AppColor.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(_menuList.menu[index].imagePath),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      _menuList.menu[index].name,
                                      style: AppTextStyle.kTextHeader3,
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      _menuList.menu[index].title,
                                      style: AppTextStyle.kTextHeader3.copyWith(
                                        color: AppColor.grey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              _menuList.menu[index].amount,
                              style: AppTextStyle.kTextHeader2.copyWith(
                                color: AppColor.kSecondaryLight,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
