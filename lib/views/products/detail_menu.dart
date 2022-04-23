import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';

class Detailmenu extends StatefulWidget {
  const Detailmenu({Key? key}) : super(key: key);

  @override
  _DetailmenuState createState() => _DetailmenuState();
}

class _DetailmenuState extends State<Detailmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : AppColor.dark,
      body: Stack(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Photo_Menu1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 250,
              ),
              child: Container(
                padding: MediaQuery.of(context).size.width < 600
                    ? const EdgeInsets.symmetric(horizontal: 0.0)
                    : const EdgeInsets.symmetric(horizontal: 50.0),
                decoration: BoxDecoration(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? Colors.white
                      : AppColor.dark,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.light
                                      ? AppColor.kPrimaryLigth
                                      : AppColor.kPrimary.withOpacity(0.2),
                              borderRadius: const BorderRadius.all(
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
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    MediaQuery.of(context).platformBrightness ==
                                            Brightness.light
                                        ? AppColor.kPrimaryLigth
                                        : AppColor.kPrimary.withOpacity(0.2),
                                radius: 20,
                                child: const ImageIcon(
                                  AssetImage(
                                    "assets/icons/Shape.png",
                                  ),
                                  color: AppColor.kPrimary,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  backgroundColor: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? AppColor.kSecondaryLight
                                          .withOpacity(0.4)
                                      : AppColor.red.withOpacity(0.2),
                                  radius: 20,
                                  child: ImageIcon(
                                    const AssetImage(
                                      "assets/icons/heart.png",
                                    ),
                                    color: MediaQuery.of(context)
                                                .platformBrightness ==
                                            Brightness.light
                                        ? AppColor.kSecondary
                                        : AppColor.red,
                                  ),
                                ),
                              ),
                            ],
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
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 10.0,
                        ),
                        child: Text(
                          "Testimonials",
                          style: TextStyle(
                              fontFamily: 'BentonSans_Bold', fontSize: 15),
                        ),
                      ),
                      const TestimonialsCard(
                        imagePath: 'assets/images/Photo_Profile.png',
                        name: 'Dianne Russell',
                        content:
                            'This is great, So delicious. You\nmust be here with your family...',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const TestimonialsCard(
                        imagePath: 'assets/images/Photo_Profilee.png',
                        name: 'Dianne Russell',
                        content:
                            'This is great, So delicious. You\nmust be here with your family...',
                      ),
                      const SizedBox(
                        height: 100.0,
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
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BentonSans_Bold',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
