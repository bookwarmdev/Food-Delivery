import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/home/widget/menu_list.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    final MenuList _menuList = MenuList();
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(
              titel: 'Menus',
              function: () => Navigator.pop(context),
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
                          boxShadow: MediaQuery.of(context)
                                      .platformBrightness ==
                                  Brightness.light
                              ? [
                                  BoxShadow(
                                    offset: const Offset(0, 0),
                                    spreadRadius: 0,
                                    color: AppColor.kblurColor.withOpacity(0.1),
                                    blurRadius: 50.0,
                                  )
                                ]
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
                                  Image.asset(_menuList.menu[index].imagePath),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        _menuList.menu[index].name,
                                        style:
                                            AppTextStyle.kTextHeader3.copyWith(
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
                                        style:
                                            AppTextStyle.kTextHeader3.copyWith(
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
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
