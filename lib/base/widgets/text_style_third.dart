import 'package:flutter/material.dart';

import '../rese/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyle.heedLine2.copyWith(color: Colors.white, fontSize: 16)
          : AppStyle.heedLine3,
    );
  }
}
