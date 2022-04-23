import 'package:flutter/material.dart';
import '../ui.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const AuthButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 22.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            end: Alignment(-0.3, 0.0),
            colors: <Color>[
              AppColor.kPrimaryTin,
              AppColor.kPrimary,
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.kTextHeader3.copyWith(
              color: AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}

class FilterMenu extends StatelessWidget {
  final String title;

  const FilterMenu({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? AppColor.kSecondaryLight.withOpacity(0.1)
            : AppColor.dark.withOpacity(0.1),
      ),
      child: Center(
        child: Text(
          title,
          style: AppTextStyle.kTextHeader4.copyWith(
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? AppColor.kSecondary
                : AppColor.grey,
          ),
        ),
      ),
    );
  }
}
