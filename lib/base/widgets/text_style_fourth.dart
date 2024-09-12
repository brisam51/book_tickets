import 'package:flutter/material.dart';

import '../rese/styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleFourth({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyle.heedLine2.copyWith(color: Colors.white, fontSize: 12)
          : AppStyle.heedLine4,
    );
  }
}
