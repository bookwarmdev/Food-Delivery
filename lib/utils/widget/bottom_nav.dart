import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';

class BottomNav extends StatelessWidget {
  final VoidCallback onPressed;
  final bool bottomIcon;
  final String text, activeImagePath;
  final Widget widget;
  final Widget iconWidget;
  const BottomNav({
    Key? key,
    required this.onPressed,
    required this.bottomIcon,
    required this.activeImagePath,
    required this.text,
    required this.widget,
    required this.iconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: bottomIcon == true
          ? Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.kPrimaryLigth
                        : AppColor.kPrimaryTin.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Image.asset(activeImagePath),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        text,
                      ),
                    ],
                  ),
                ),
                widget,
              ],
            )
          : iconWidget,
    );
  }
}
