import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class Trackorder extends StatefulWidget {
  const Trackorder({Key? key}) : super(key: key);

  @override
  _TrackorderState createState() => _TrackorderState();
}

class _TrackorderState extends State<Trackorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/Maps_Image.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 0, 0),
            child: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),  
              child: const Center(
                child: Image(
                  image: AssetImage(
                    'assets/icons/Path.png',
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(235, 150, 0, 0),
                child: Image(
                  image: AssetImage(
                    'assets/images/Car_track.png',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(235, 100, 0, 0),
                child: Image(
                  image: AssetImage(
                    'assets/images/Union.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(293, 155, 0, 0),
                child: Row(
                  children: const [
                    Image(
                      image: AssetImage(
                        'assets/icons/Icon_clock.png',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                        fontFamily: 'BentonSans_Book',
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                            0.5,
                          ),
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/PatternP.png",
                        ),
                        fit: BoxFit.cover,
                        // opacity: 10,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
                          child: Text(
                            'Track Order',
                            style: TextStyle(
                                fontFamily: 'BentonSans_Bold', fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 90,
                              width: 357,
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
                                ],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 15, 0, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/images/PhotoMan.png")),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 15, 0, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Mr Kemplars",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: const [
                                              Image(
                                                  image: AssetImage(
                                                      "assets/icons/Icon_maps.png")),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '25 minutues, on its way',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 70,
                                  width: 270,
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
                                    ],
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                            image: AssetImage(
                                                "assets/icons/Call.png")),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Call",
                                          style: TextStyle(
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 18,
                                              color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Image(
                                      image: AssetImage(
                                        "assets/icons/Message.png",
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
