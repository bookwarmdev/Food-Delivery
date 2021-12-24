import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/home/widget/resturant_list.dart';

class ResturantScreen extends StatefulWidget {
  const ResturantScreen({Key? key}) : super(key: key);

  @override
  _ResturantScreenState createState() => _ResturantScreenState();
}

class _ResturantScreenState extends State<ResturantScreen> {
  final ResturantList _resturantList = ResturantList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(
                function: () {
                  Navigator.pop(context);
                },
                titel: 'Restaurants'),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: _resturantList.restureant.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(12, 26),
                            spreadRadius: 0,
                            color: AppColor.kPrimaryLigth,
                            blurRadius: 50.0,
                          )
                        ],
                        color: AppColor.white,
                      ),
                      width: 140.0,
                      height: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(_resturantList.restureant[index].imagePath),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            _resturantList.restureant[index].name,
                            style: AppTextStyle.kTextHeader2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${_resturantList.restureant[index].time} Mins',
                            style: AppTextStyle.kTextHeader4
                                .copyWith(color: AppColor.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
