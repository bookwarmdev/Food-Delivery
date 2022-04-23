import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/buy/views/buy_screen.dart';
import 'package:food_delivery/views/chat/view/chat_screen.dart';
import 'package:food_delivery/views/home/views/home_screen.dart';
import 'package:food_delivery/views/profile/profile.dart';

// models
export './models/menu.dart';
export './models/notification.dart';
export './models/resturant.dart';

//widgets
export './widget/favorite_food.dart';
export './widget/menu_list.dart';
export './widget/resturant_list.dart';
export './widget/resturant_list.dart';
export './widget/search.dart';

//views
export './views/filter_screen.dart';
export './views/home_screen.dart';
export './views/menu_screen.dart';
export './views/notification_screen.dart';
export './views/restaurant_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

enum BottomIcon { home, profile, buy, chat }

class _HomeState extends State<Home> {
  BottomIcon bottomIcon = BottomIcon.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (bottomIcon == BottomIcon.home) ...[
              const HomeScreen(),
            ] else if (bottomIcon == BottomIcon.profile) ...[
              const ProfileScreen(),
            ] else if (bottomIcon == BottomIcon.buy) ...[
              const BuyScreen(),
            ] else if (bottomIcon == BottomIcon.chat) ...[
              const ChatScreen(),
            ],
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return Visibility(
                    visible: MediaQuery.of(context).viewInsets.bottom == 0
                        ? true
                        : false,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.white
                                : AppColor.dark,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: AppColor.appShadow,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.home;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.home
                                    ? true
                                    : false,
                                iconWidget:
                                    Image.asset('assets/icons/Home.png'),
                                activeImagePath: 'assets/icons/Active_Home.png',
                                text: 'Home',
                                widget: const Text(''),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.profile;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.profile
                                    ? true
                                    : false,
                                iconWidget:
                                    Image.asset('assets/icons/Profile.png'),
                                activeImagePath: 'assets/icons/Profile.png',
                                text: 'Profile',
                                widget: const Text(''),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.buy;
                                  });
                                },
                                bottomIcon:
                                    bottomIcon == BottomIcon.buy ? true : false,
                                iconWidget: Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {});
                                        bottomIcon = BottomIcon.buy;
                                      },
                                      icon: Image.asset('assets/icons/Buy.png'),
                                    ),
                                    Positioned(
                                      left: 28.0,
                                      top: 10.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MediaQuery.of(context)
                                                        .platformBrightness ==
                                                    Brightness.light
                                                ? AppColor.white
                                                : AppColor.black,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: AppColor.red,
                                        ),
                                        width: 15.0,
                                        height: 15.0,
                                        child: Center(
                                          child: Text(
                                            '7',
                                            style: AppTextStyle.kTextHeader2
                                                .copyWith(
                                              fontSize: 10.0,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                activeImagePath: 'assets/icons/Buy.png',
                                text: 'Buy',
                                widget: Positioned(
                                  left: 35.0,
                                  top: 5.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? AppColor.white
                                            : AppColor.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColor.red,
                                    ),
                                    width: 15.0,
                                    height: 15.0,
                                    child: Center(
                                      child: Text(
                                        '7',
                                        style:
                                            AppTextStyle.kTextHeader2.copyWith(
                                          fontSize: 10.0,
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.chat;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.chat
                                    ? true
                                    : false,
                                iconWidget: Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          bottomIcon = BottomIcon.chat;
                                        });
                                      },
                                      icon:
                                          Image.asset('assets/icons/Chat.png'),
                                    ),
                                    Positioned(
                                      left: 25.0,
                                      top: 10.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MediaQuery.of(context)
                                                        .platformBrightness ==
                                                    Brightness.light
                                                ? AppColor.white
                                                : AppColor.black,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: AppColor.red,
                                        ),
                                        width: 15.0,
                                        height: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                activeImagePath: 'assets/icons/Active_Chat.png',
                                text: 'Chat',
                                widget: Positioned(
                                  left: 35.0,
                                  top: 6.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? AppColor.white
                                            : AppColor.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColor.red,
                                    ),
                                    width: 15.0,
                                    height: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Visibility(
                    visible: MediaQuery.of(context).viewInsets.bottom == 0
                        ? true
                        : false,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.white
                                : AppColor.dark,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: AppColor.appShadow,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.home;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.home
                                    ? true
                                    : false,
                                iconWidget:
                                    Image.asset('assets/icons/Home.png'),
                                activeImagePath: 'assets/icons/Active_Home.png',
                                text: 'Home',
                                widget: const Text(''),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.profile;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.profile
                                    ? true
                                    : false,
                                iconWidget:
                                    Image.asset('assets/icons/Profile.png'),
                                activeImagePath: 'assets/icons/Profile.png',
                                text: 'Profile',
                                widget: const Text(''),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.buy;
                                  });
                                },
                                bottomIcon:
                                    bottomIcon == BottomIcon.buy ? true : false,
                                iconWidget: Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {});
                                        bottomIcon = BottomIcon.buy;
                                      },
                                      icon: Image.asset('assets/icons/Buy.png'),
                                    ),
                                    Positioned(
                                      left: 28.0,
                                      top: 10.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MediaQuery.of(context)
                                                        .platformBrightness ==
                                                    Brightness.light
                                                ? AppColor.white
                                                : AppColor.black,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: AppColor.red,
                                        ),
                                        width: 15.0,
                                        height: 15.0,
                                        child: Center(
                                          child: Text(
                                            '7',
                                            style: AppTextStyle.kTextHeader2
                                                .copyWith(
                                              fontSize: 10.0,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                activeImagePath: 'assets/icons/Buy.png',
                                text: 'Buy',
                                widget: Positioned(
                                  left: 35.0,
                                  top: 5.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? AppColor.white
                                            : AppColor.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColor.red,
                                    ),
                                    width: 15.0,
                                    height: 15.0,
                                    child: Center(
                                      child: Text(
                                        '7',
                                        style:
                                            AppTextStyle.kTextHeader2.copyWith(
                                          fontSize: 10.0,
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              BottomNav(
                                onPressed: () {
                                  setState(() {
                                    bottomIcon = BottomIcon.chat;
                                  });
                                },
                                bottomIcon: bottomIcon == BottomIcon.chat
                                    ? true
                                    : false,
                                iconWidget: Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          bottomIcon = BottomIcon.chat;
                                        });
                                      },
                                      icon:
                                          Image.asset('assets/icons/Chat.png'),
                                    ),
                                    Positioned(
                                      left: 25.0,
                                      top: 10.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MediaQuery.of(context)
                                                        .platformBrightness ==
                                                    Brightness.light
                                                ? AppColor.white
                                                : AppColor.black,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: AppColor.red,
                                        ),
                                        width: 15.0,
                                        height: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                activeImagePath: 'assets/icons/Active_Chat.png',
                                text: 'Chat',
                                widget: Positioned(
                                  left: 35.0,
                                  top: 6.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? AppColor.white
                                            : AppColor.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColor.red,
                                    ),
                                    width: 15.0,
                                    height: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
