
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';

class PopularMenuCard extends StatelessWidget {
  const PopularMenuCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.amount,
  }) : super(key: key);

  final String imagePath;
  final String name;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: 147,
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
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
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: Image(
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Spacy Fresh Crab",
                style: TextStyle(
                  fontFamily: 'BentonSans_Bold',
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                amount,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
