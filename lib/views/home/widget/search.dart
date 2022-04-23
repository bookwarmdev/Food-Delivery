import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/svgs/Search.svg',
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? AppColor.kSecondary
                      : AppColor.white,
                ),
              ),
              hintText: 'What do you want to order?',
              hintStyle: AppTextStyle.kTextHeader4.copyWith(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? AppColor.kSecondary.withOpacity(0.8)
                    : AppColor.grey,
              ),
              filled: true,
              fillColor:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? AppColor.kSecondaryLight.withOpacity(0.2)
                      : AppColor.black.withOpacity(0.4),
              focusColor: AppColor.kSecondary,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                borderSide: BorderSide(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? AppColor.kSecondaryLight.withOpacity(0.2)
                      : Colors.transparent,
                  width: 0.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(22)),
                borderSide: BorderSide(
                  color: AppColor.kSecondaryLight.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
