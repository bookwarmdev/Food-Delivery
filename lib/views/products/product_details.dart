import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({Key? key}) : super(key: key);

  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
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
                  image: AssetImage(
                    "assets/images/Photo_Restaurant.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: 800,
                  width: 420,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      30,
                      40,
                      30,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 90,
                              decoration: const BoxDecoration(
                                color: AppColor.kPrimaryLigth,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Popular',
                                  style: TextStyle(
                                    color: AppColor.kPrimary,
                                    fontFamily: 'BentonSans_Medium',
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 170),
                              child: CircleAvatar(
                                backgroundColor: AppColor.kPrimaryLigth,
                                radius: 20,
                                child: ImageIcon(
                                  AssetImage(
                                    "assets/icons/Shape.png",
                                  ),
                                  color: AppColor.kPrimary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundColor:
                                    AppColor.kSecondaryLight.withOpacity(0.4),
                                radius: 20,
                                child: const ImageIcon(
                                  AssetImage(
                                    "assets/icons/heart.png",
                                  ),
                                  color: AppColor.kSecondary,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Wijie Bar and Resto',
                            style: TextStyle(
                              fontFamily: 'BentonSans_Bold',
                              fontSize: 30,
                            ),
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
                                      "assets/icons/Icon_map-pin.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      '19 Km',
                                      style: TextStyle(
                                        color: AppColor.kPrimary,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
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
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Most whole Alaskan Red King Crab get broken down into\nlegs, claws and lump meat. We offer all these options as\nwell as in our online shop, but there's nothing like getting\nthe whole...",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'BentonSans_Book',
                              fontSize: 13.5,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Popular Menu",
                                style: TextStyle(
                                  fontFamily: 'BentonSans_Bold',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                  color: AppColor.kSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 60,
                                          width: 50,
                                          child: Image(
                                            image: AssetImage(
                                              "assets/images/image_34.png",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Spacy Fresh Crab",
                                            style: TextStyle(
                                                fontFamily: 'BentonSans_Bold',
                                                fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '12\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
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
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 60,
                                          width: 50,
                                          child: Image(
                                            image: AssetImage(
                                              "assets/images/image_32.png",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Spacy Fresh Crab",
                                            style: TextStyle(
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '16\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 60,
                                          width: 50,
                                          child: Image(
                                            image: AssetImage(
                                              "assets/images/image_34.png",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Spacy Fresh Crab",
                                            style: TextStyle(
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '12\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
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
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Testimonials",
                            style: TextStyle(
                              fontFamily: 'BentonSans_Bold',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
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
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
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
                              padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          "assets/images/Photo_Profilee.png")),
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
                                                height: 1.5),
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
                      ],
                    ),
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