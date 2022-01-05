import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';

class TextChatCard extends StatelessWidget {
  final Text text;
  final List<Color> color;
  const TextChatCard({ Key? key, required this.text, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 15.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient:  LinearGradient(
            end: const Alignment(-0.3, 0.0),
            colors: color,
          ),
        ),
        child: text,
      );
  }
}