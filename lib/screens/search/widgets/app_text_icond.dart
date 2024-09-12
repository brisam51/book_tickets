import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppTextIcond extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcond({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(
        right: 10,left: 10,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyle.planColor,
            size: 30,
          ),
          const SizedBox(
            width: 15.5,
          ),
          Text(
            text,
            style: AppStyle.heedLine4.copyWith(fontSize: 13),
          )
        ],
      ),
    );
  }
}
