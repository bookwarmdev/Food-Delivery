import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/widget/navigator.dart';

class Trackorder extends StatefulWidget {
  const Trackorder({Key? key}) : super(key: key);

  @override
  _TrackorderState createState() => _TrackorderState();
}

class _TrackorderState extends State<Trackorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Maps_Image.png"
                  : 'assets/images/Maps_Image1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: NavigateBack(
                  function: () => Navigator.pop(context), titel: ''),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? AppColor.white
                      : AppColor.dark,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                              0.5,
                            ),
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ]
                      : AppColor.appContanerShadowDark,
                  image: DecorationImage(
                    image: AssetImage(
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? "assets/images/PatternP.png"
                          : "assets/images/PatternP1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Track Order',
                      style: TextStyle(
                        fontFamily: 'BentonSans_Bold',
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.white
                                : AppColor.grey.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ]
                                    : AppColor.appContanerShadowDark,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Image(
                                image: AssetImage("assets/images/PhotoMan.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  15,
                                  15,
                                  0,
                                  0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Mr Kemplars",
                                      style: TextStyle(
                                        fontFamily: 'BentonSans_Bold',
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage(
                                            "assets/icons/Icon_maps.png",
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '25 minutues, on its way',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width / 1.6,
                              decoration: BoxDecoration(
                                color:
                                    MediaQuery.of(context).platformBrightness ==
                                            Brightness.light
                                        ? AppColor.white
                                        : AppColor.kPrimary,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                boxShadow: MediaQuery.of(context)
                                            .platformBrightness ==
                                        Brightness.light
                                    ? [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        )
                                      ]
                                    : AppColor.appContanerShadowDark,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                          "assets/icons/Call.png"),
                                      color: MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light
                                          ? null
                                          : AppColor.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Call",
                                      style: TextStyle(
                                        fontFamily: 'BentonSans_Bold',
                                        fontSize: 18,
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? AppColor.kPrimary
                                            : AppColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                color:
                                    MediaQuery.of(context).platformBrightness ==
                                            Brightness.light
                                        ? AppColor.white
                                        : AppColor.grey.withOpacity(0.4),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                boxShadow: MediaQuery.of(context)
                                            .platformBrightness ==
                                        Brightness.light
                                    ? [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ]
                                    : AppColor.appContanerShadowDark,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/icons/Message_Path.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
