import 'package:flutter/material.dart';
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
                  width: MediaQuery.of(context).size.width,
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
                    padding: const EdgeInsets.fromLTRB(
                      20,
                      40,
                      20,
                      0,
                    ),
                    child: Expanded(
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
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
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
                                    backgroundColor: MediaQuery.of(context)
                                                .platformBrightness ==
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
                                          color: AppColor.grey,
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
                          Expanded(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                    physics: const BouncingScrollPhysics(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          PopularMenuCard(
                                            imagePath:
                                                'assets/images/image_34.png',
                                            name: 'Spacy Fresh Crab',
                                            amount: '12\$',
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          PopularMenuCard(
                                            imagePath:
                                                'assets/images/image_32.png',
                                            name: 'Spacy Fresh Crab',
                                            amount: '16\$',
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          PopularMenuCard(
                                            imagePath:
                                                'assets/images/image_34.png',
                                            name: 'Spacy Fresh Crab',
                                            amount: '12\$',
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
                                  const TestimonialsCard(
                                    imagePath:
                                        'assets/images/Photo_Profile.png',
                                    name: 'Dianne Russell',
                                    content:
                                        'This is great, So delicious. You\nmust be here with your family...',
                                  ),
                                  const TestimonialsCard(
                                      imagePath:
                                          'assets/images/Photo_Profilee.png',
                                      name: 'Dianne Russell',
                                      content:
                                          'This is great, So delicious. You\nmust be here with your family...')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
