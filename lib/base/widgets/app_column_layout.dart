import 'package:book_tickets/base/widgets/text_style_fourth.dart';
import 'package:book_tickets/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumnLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment align;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.align,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
