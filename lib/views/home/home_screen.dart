import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/utils/widget/bottom_nav.dart';
import 'package:food_delivery/views/buy/buy_screen.dart';
import 'package:food_delivery/views/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum BottomIcon { Home, Profile, Buy, Chat }

class _HomeScreenState extends State<HomeScreen> {
  BottomIcon bottomIcon = BottomIcon.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (bottomIcon == BottomIcon.Home) ...[
              Text('Home'),
            ] else if (bottomIcon == BottomIcon.Profile) ...[
              const ProfileScreen(),
            ] else if (bottomIcon == BottomIcon.Buy) ...[
              const BuyScreen(),
            ] else if (bottomIcon == BottomIcon.Chat) ...[
              Text('chat'),
            ],
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.kblurColor.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 50,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomNav(
                        onPressed: () {
                          setState(() {
                            bottomIcon = BottomIcon.Home;
                          });
                        },
                        bottomIcon:
                            bottomIcon == BottomIcon.Home ? true : false,
                        iconWidget: Image.asset('assets/icons/Home.png'),
                        activeImagePath: 'assets/icons/Active_Home.png',
                        text: 'Home',
                        widget: const Text(''),
                      ),
                      BottomNav(
                        onPressed: () {
                          setState(() {
                            bottomIcon = BottomIcon.Profile;
                          });
                        },
                        bottomIcon:
                            bottomIcon == BottomIcon.Profile ? true : false,
                        iconWidget: Image.asset('assets/icons/Profile.png'),
                        activeImagePath: 'assets/icons/Profile.png',
                        text: 'Profile',
                        widget: const Text(''),
                      ),
                      BottomNav(
                        onPressed: () {
                          setState(() {
                            bottomIcon = BottomIcon.Buy;
                          });
                        },
                        bottomIcon: bottomIcon == BottomIcon.Buy ? true : false,
                        iconWidget: Stack(
                          children: [ 
                            IconButton(
                              onPressed: () {
                            bottomIcon = BottomIcon.Buy;

                              },
                              icon: Image.asset('assets/icons/Buy.png'),
                            ),
                            Positioned(
                              left: 28.0,
                              top: 5.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.red,
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Text(
                                    '7',
                                    style: TextStyle(
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
                          left: 33.0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: AppColor.red,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '7',
                                style: TextStyle(
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
                            bottomIcon = BottomIcon.Chat;
                          });
                        },
                        bottomIcon:
                            bottomIcon == BottomIcon.Chat ? true : false,
                        iconWidget: Stack(
                          children: [
                            IconButton(onPressed: (){
                              setState(() { 
                            bottomIcon = BottomIcon.Chat;

                              });
                            }, icon: Image.asset('assets/icons/Chat.png'),),
                            Positioned(
                              left: 28.0,
                              top: 7.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.red,
                                ),
                                 width: 20.0,
                                 height: 20.0,
                              ),
                            ),
                          ],
                        ),
                        activeImagePath: 'assets/icons/Active_Chat.png',
                        text: 'Chat',
                        widget: Positioned(
                              left: 35.0,
                              top: 2.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.red,
                                ),
                                 width: 20.0,
                                 height: 20.0,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
