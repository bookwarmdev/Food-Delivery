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
import 'package:food_delivery/views/products/detail_menu.dart';
import 'package:food_delivery/views/products/product_details.dart';

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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? AppColor.kSecondaryLight.withOpacity(0.2)
                          : AppColor.dark.withOpacity(0.4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/svgs/Filter.svg',
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.kSecondary
                            : AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? const AssetImage('assets/images/PromoAdvertising.png')
                      : const AssetImage('assets/images/PromoAdvertising1.png'),
                  fit: BoxFit.cover,
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
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.white
                                : AppColor.black,
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
                Text(
                  'Nearest Restaurant',
                  style: AppTextStyle.kTextHeader3.copyWith(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.black
                        : AppColor.white,
                  ),
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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Productdetails(),
                ),
              ),
              child: SizedBox(
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
                            boxShadow:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? const [
                                        BoxShadow(
                                          offset: Offset(0, 3),
                                          spreadRadius: 0,
                                          color: AppColor.kPrimaryLigth,
                                          blurRadius: 7.0,
                                        )
                                      ]
                                    : AppColor.appContanerShadowDark,
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.white
                                : AppColor.dark.withOpacity(0.4),
                          ),
                          width: 147.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                _resturantList.restureant[index].imagePath,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                _resturantList.restureant[index].name,
                                style: AppTextStyle.kTextHeader2.copyWith(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? AppColor.black
                                      : AppColor.white,
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
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Menu',
                  style: AppTextStyle.kTextHeader3.copyWith(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.black
                        : AppColor.white,
                  ),
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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detailmenu(),
                ),
              ),
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: _menuList.menu.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            boxShadow:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? AppColor.appShadow
                                    : AppColor.appContanerShadowDark,
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.white
                                : AppColor.dark.withOpacity(0.4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        _menuList.menu[index].imagePath),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          _menuList.menu[index].name,
                                          style: AppTextStyle.kTextHeader3
                                              .copyWith(
                                            color: MediaQuery.of(context)
                                                        .platformBrightness ==
                                                    Brightness.light
                                                ? AppColor.black
                                                : AppColor.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          _menuList.menu[index].title,
                                          style: AppTextStyle.kTextHeader3
                                              .copyWith(
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
                          height: 10.0,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
