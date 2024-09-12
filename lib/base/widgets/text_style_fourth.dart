import 'package:flutter/material.dart';

import '../rese/styles/app_style.dart';
class TextStyleFourth extends StatelessWidget {
  final String text;
  const TextStyleFourth({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: AppStyle.heedLine2
          .copyWith(color: Colors.white, fontSize: 12),
    );
  }
}
