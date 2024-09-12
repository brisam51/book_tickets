import 'package:flutter/material.dart';

import '../rese/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: AppStyle.heedLine2
          .copyWith(color: Colors.white, fontSize: 16),
    );
  }
}
