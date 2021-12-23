import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';
import 'package:food_delivery/views/home/views/notification_screen.dart';

class FavoriteFood extends StatelessWidget {
  const FavoriteFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const SizedBox(height: 50.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [ 
                Text(
                  'Find Your \nFavorite Food',
                  style: AppTextStyle.kTextHeader,
                ),
              ],
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen()
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: AppColor.kPrimaryLigth,
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset("assets/icons/Notifiaction.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.red,
                      border: Border.all(
                        color: AppColor.white,
                        width: 1.5,
                      ),
                    ),
                    width: 15.0,
                    height: 15.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
