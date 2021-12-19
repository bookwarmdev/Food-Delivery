import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';

class BottomNav extends StatelessWidget {
  VoidCallback onPressed;
  bool bottomIcon;
  String text, activeImagePath; 
  Widget widget;
  Widget iconWidget;
  BottomNav({
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
                    color: AppColor.kPrimaryLigth,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Image.asset(activeImagePath),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(text),
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
