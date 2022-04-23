import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../ui.dart';

class NavigateBack extends StatelessWidget {
  final VoidCallback function;
  final String titel;
  const NavigateBack({Key? key, required this.function, required this.titel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30.0,
        ),
        GestureDetector(
          onTap: function,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? AppColor.kSecondaryLight.withOpacity(0.1)
                      : AppColor.dark.withOpacity(0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              child: SvgPicture.asset(
                'assets/svgs/Vector.svg',
                width: 10.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          titel,
          style: AppTextStyle.kTextHeader2.copyWith(
            fontWeight: FontWeight.bold,
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? AppColor.black
                : AppColor.white,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
