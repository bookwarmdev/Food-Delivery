import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';

class pscrollmode extends StatefulWidget {
  pscrollmode({Key? key}) : super(key: key);

  @override
  _pscrollmodeState createState() => _pscrollmodeState();
}

enum BottomIcon { home, profile, buy, chat }

class _pscrollmodeState extends State<pscrollmode> {
  BottomIcon bottomIcon = BottomIcon.home;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Fine_Boy.png"),
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onVerticalDragStart: (DragStartDetails details) {
                pscrollmode();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 800,
                  width: 420,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.orange[50],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              'Member Gold',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: 'BentonSans_Medium'),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Anam Wosono',
                                  style: TextStyle(
                                      fontFamily: 'BentonSans_Bold',
                                      fontSize: 30,
                                      height: 1),
                                ),
                                Image(
                                    image: AssetImage(
                                        "assets/icons/Edit_Icon.png")),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'qaawjfn@gmail.com',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Container(
                              height: 70,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 0, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/icons/Voucher_Icon.png")),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 10, 0, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "You have 3 voucher",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Favourite",
                              style: TextStyle(
                                  fontFamily: 'BentonSans_Bold', fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 120,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 20, 0, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/images/Carrot.png")),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Spacy Fresh crab",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'Waroenk Kita',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              ' \$ 35',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 25,
                                                  fontFamily: 'BentonSans_Bold',
                                                  height: 1.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 20, 0, 0),
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(17))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Text(
                                              'Buy Again',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'BentonSans_Bold',
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 120,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 20, 0, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/images/Cup.png")),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Spacy Fresh crab",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'Waroenk Kita',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              ' \$ 35',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 25,
                                                  fontFamily: 'BentonSans_Bold',
                                                  height: 1.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 20, 0, 0),
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(17))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Text(
                                              'Buy Again',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'BentonSans_Bold',
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 120,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 20, 0, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/images/Ice_Cream.png")),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Spacy Fresh crab",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'Waroenk Kita',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              ' \$ 35',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 25,
                                                  fontFamily: 'BentonSans_Bold',
                                                  height: 1.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 20, 0, 0),
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(17))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Text(
                                              'Buy Again',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'BentonSans_Bold',
                                                  fontSize: 12),
                                            ),
                                          ],
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
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
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
                        bottomIcon:
                            bottomIcon == BottomIcon.home ? true : false,
                        iconWidget: Image.asset('assets/icons/Home.png'),
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
                        bottomIcon:
                            bottomIcon == BottomIcon.profile ? true : false,
                        iconWidget: Image.asset('assets/icons/Profile.png'),
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
                        bottomIcon: bottomIcon == BottomIcon.buy ? true : false,
                        iconWidget: Stack(
                          children: [
                            IconButton(
                              onPressed: () {
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
                                    color: AppColor.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.red,
                                ),
                                width: 15.0,
                                height: 15.0,
                                child: Center(
                                  child: Text(
                                    '7',
                                    style: AppTextStyle.kTextHeader2.copyWith(
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
                                color: AppColor.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: AppColor.red,
                            ),
                            width: 15.0,
                            height: 15.0,
                            child: Center(
                              child: Text(
                                '7',
                                style: AppTextStyle.kTextHeader2.copyWith(
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
                        bottomIcon:
                            bottomIcon == BottomIcon.chat ? true : false,
                        iconWidget: Stack(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  bottomIcon = BottomIcon.chat;
                                });
                              },
                              icon: Image.asset('assets/icons/Chat.png'),
                            ),
                            Positioned(
                              left: 25.0,
                              top: 10.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
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
                                color: AppColor.white,
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
          ],
        ),
      ),
    );
  }
}
