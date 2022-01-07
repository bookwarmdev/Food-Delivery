import 'package:flutter/material.dart'; 

class pdcrollmode extends StatefulWidget {
  pdcrollmode({Key? key}) : super(key: key);

  @override
  _pdcrollmodeState createState() => _pdcrollmodeState();
}

class _pdcrollmodeState extends State<pdcrollmode> {
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
                    image: AssetImage("assets/images/Photo_Restaurant.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
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
                    padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
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
                                    fontFamily: 'BentonSans_Medium'),
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
                            'Wijie Bar and Resto',
                            style: TextStyle(
                                fontFamily: 'BentonSans_Bold', fontSize: 30),
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
                                          "assets/icons/Icon_map-pin.png")),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      '19 Km',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
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
                                            "assets/icons/Icon_Star.png")),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '4.8 Rating',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
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
                                height: 1.5),
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
                                    fontSize: 15),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
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
                                                  "assets/images/image_34.png")),
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
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
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
                                                    "assets/images/image_32.png")),
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
                                              '16\$',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
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
                                                    "assets/images/image_34.png")),
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
                                                  fontSize: 12),
                                            ),
                                          )
                                        ],
                                      ),
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
                              padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          "assets/images/Photo_Profile.png")),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Dianne Russell",
                                          style: TextStyle(
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 18),
                                        ),
                                        const Text(
                                          '12 April, 2021',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18),
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
                                              Radius.circular(17))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/Icon_Star1.png")),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.green,
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
                                      children: [
                                        const Text(
                                          "Dianne Russell",
                                          style: TextStyle(
                                              fontFamily: 'BentonSans_Bold',
                                              fontSize: 18),
                                        ),
                                        const Text(
                                          '12 April, 2021',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18),
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
                                              Radius.circular(17))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/Icon_Star1.png")),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.green,
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
          ],
        ),
      ),
    );
  }
}
