import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';
import 'package:food_delivery/views/home/widget/favorite_food.dart';
import 'package:food_delivery/views/home/widget/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -20.0,
              right: -5.0,
              child: Image.asset('assets/images/Pattern.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const FavoriteFood(),
                  Row(
                    children: [
                      const Search(),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: AppColor.kSecondaryLight.withOpacity(0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset('assets/svgs/Filter.svg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/PromoAdvertising.png'),
                      ),
                    ), 
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 35.0, 
                          top: 30.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Special Deal For \nOctober',
                                style: AppTextStyle.kTextHeader2.copyWith(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Buy Now',
                                  style: AppTextStyle.kTextHeader4.copyWith(
                                    color: AppColor.kPrimary,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColor.white,
                                ),
                              ),
                            ],
                          ),
                        ) ,
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Nearest Restaurant', style: AppTextStyle.kTextHeader3,),
                      TextButton(onPressed: (){}, child: Text('View More', style: AppTextStyle.kTextHeader4.copyWith(
                        color: AppColor.kSecondaryLight,
                      ),),),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Popular Menu', style: AppTextStyle.kTextHeader3,),
                      TextButton(onPressed: (){}, child: Text('View More', style: AppTextStyle.kTextHeader4.copyWith(
                        color: AppColor.kSecondaryLight,
                      ),),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
