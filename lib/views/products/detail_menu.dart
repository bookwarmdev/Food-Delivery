import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class Detailmenu extends StatefulWidget {
  const Detailmenu({Key? key}) : super(key: key);

  @override
  _DetailmenuState createState() => _DetailmenuState();
}

class _DetailmenuState extends State<Detailmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Photo_Menu.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 250,
              ),
              child: Container(
                height: 800,
                width: 420,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              'Popular',
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'BentonSans_Medium',
                              ),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: CircleAvatar(
                              backgroundColor: Colors.green[50],
                              radius: 20,
                              child: const ImageIcon(
                                AssetImage("assets/icons/Shape.png"),
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.red[50],
                              radius: 20,
                              child: const ImageIcon(
                                AssetImage("assets/icons/heart.png"),
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Rainbow Sandwich\nSugar',
                          style: TextStyle(
                              fontFamily: 'BentonSans_Bold',
                              fontSize: 30,
                              height: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Row(
                              children: const [
                                Image(
                                  image: AssetImage(
                                    "assets/icons/Icon_Star.png",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    '4.8 Rating',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: const [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/shopping-bag.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      '2000+ Order',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Nulla occaecat velit laborum exercitation ullamco. Elit\nlabore eu aute elit nostrud culpa velit excepteur deserunt\nsunt. Velit non est cillum consequat cupidatat ex Lorem\nlaboris labore aliqua ad duis eu laborum.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BentonSans_Book',
                              fontSize: 13.5,
                              height: 1.5),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text(
                          '* Strowberry\n* Cream\n* wheat',
                          style: TextStyle(
                              fontFamily: 'BentoSans_Book',
                              fontSize: 13.5,
                              height: 2),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Nulla occaecat velit laborum exercitation ullamco. Elit\nlabore eu aute elit nostrud culpa velit excepteur deserunt sunt.',
                          style: TextStyle(
                            fontFamily: 'BentoSans_Book',
                            fontSize: 13.5,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Testimonials",
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
                              color: AppColor.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    "assets/images/Photo_Profile.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Dianne Russell",
                                        style: TextStyle(
                                          fontFamily: 'BentonSans_Bold',
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        '12 April, 2021',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 18),
                                        child: Text(
                                          'This is great, So delicious. You\nmust be here with your family...',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.green[50],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(17),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/Icon_Star1.png",
                                          ),
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                            color: AppColor.kPrimary,
                                            fontFamily: 'BentonSans_Bold',
                                            fontSize: 22,
                                          ),
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
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
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
                            padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    "assets/images/Photo_Profilee.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Dianne Russell",
                                        style: TextStyle(
                                            fontFamily: 'BentonSans_Bold',
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '12 April, 2021',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 18),
                                        child: Text(
                                          'This is great, So delicious. You\nmust be here with your family...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              height: 1.5,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.green[50],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(17))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Image(
                                            image: AssetImage(
                                                "assets/images/Icon_Star1.png")),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              color: AppColor.kPrimary,
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 22),
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
          Positioned(
            bottom: 20.0, 
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60, 
                decoration: BoxDecoration(
                    gradient: AppColor.authColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ]),
                child: const Center(
                    child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BentonSans_Bold',
                      fontSize: 16),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
