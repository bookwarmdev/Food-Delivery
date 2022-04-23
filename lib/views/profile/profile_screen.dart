import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

enum BottomIcon { home, profile, buy, chat }

class _ProfileScreenState extends State<ProfileScreen> {
  BottomIcon bottomIcon = BottomIcon.home;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    image: AssetImage("assets/images/Fine_Boy.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Container(
                  margin: const EdgeInsetsDirectional.only(bottom: 80.0),
                  padding: MediaQuery.of(context).size.width < 600
                      ? const EdgeInsets.symmetric(horizontal: 0.0)
                      : const EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: BoxDecoration(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.white
                        : AppColor.dark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            height: 5.0,
                            width: 58.0,
                            decoration: BoxDecoration(
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.light
                                      ? Colors.orange[50]
                                      : AppColor.grey.withOpacity(0.4),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.orange[50]
                                : AppColor.kSecondaryLight.withOpacity(0.1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            'Member Gold',
                            style: TextStyle(
                              color: AppColor.kSecondaryLight,
                              fontFamily: 'BentonSans_Medium',
                            ),
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
                                  height: 1,
                                ),
                              ),
                              Image(
                                image: AssetImage("assets/icons/Edit_Icon.png"),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'qaawjfn@gmail.com',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          height: 70,
                          // width: 400,
                          decoration: BoxDecoration(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.white
                                : AppColor.grey.withOpacity(0.2),
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
                                        )
                                      ]
                                    : AppColor.appContanerShadowDark,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    "assets/icons/Voucher_Icon.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "You have 3 voucher",
                                  style: TextStyle(
                                    fontFamily: 'BentonSans_Bold',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Favourite",
                            style: TextStyle(
                              fontFamily: 'BentonSans_Bold',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const FavouriteCard(
                          name: 'Spacy Fresh crab',
                          title: 'Waroenk Kita',
                          amount: ' \$ 35',
                          imagePath: 'assets/images/Carrot.png',
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const FavouriteCard(
                          name: 'Spacy Fresh crab',
                          title: 'Waroenk Kita',
                          amount: ' \$ 35',
                          imagePath: 'assets/images/Cup.png',
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const FavouriteCard(
                          name: 'Spacy Fresh crab',
                          title: 'Waroenk Kita',
                          amount: ' \$ 35',
                          imagePath: 'assets/images/Ice_Cream.png',
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

class FavouriteCard extends StatelessWidget {
  final String name, title, amount, imagePath;
  const FavouriteCard({
    Key? key,
    required this.name,
    required this.title,
    required this.amount,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : AppColor.grey.withOpacity(0.3),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ]
                  : AppColor.appContanerShadowDark,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage(imagePath),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'BentonSans_Bold',
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontFamily: 'BentonSans_Bold',
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(17),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Buy Again',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BentonSans_Bold',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
