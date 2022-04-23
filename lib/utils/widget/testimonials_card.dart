import 'package:flutter/material.dart';

import '../ui.dart';

class TestimonialsCard extends StatelessWidget {
  const TestimonialsCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.content,
  }) : super(key: key);

  final String imagePath;
  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? AppColor.white
            : AppColor.grey.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: MediaQuery.of(context).platformBrightness == Brightness.light
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]
            : AppColor.appContanerShadowDark,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                imagePath,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'BentonSans_Bold',
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    '12 April, 2021',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      content,
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.black
                            : AppColor.white,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 33,
                width: 53,
                decoration: BoxDecoration(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? AppColor.kPrimaryLigth
                      : AppColor.kPrimary.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18.5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        fontSize: 16,
                      ),
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
