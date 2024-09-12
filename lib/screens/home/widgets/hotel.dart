import 'package:book_tickets/base/rese/styles/app_style.dart';

import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.60,
      height: 300,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppStyle.colorPrimary,
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //---------------Image Container-------------------
          Container(
            margin: const EdgeInsets.only(top: 10.0, left: 5),
            width: size.width * 0.57,
            height: 200,
            decoration: BoxDecoration(
                color: AppStyle.textColor,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/${hotel['image']}')),
                borderRadius: BorderRadius.circular(12.0)),
          ),
          //---------------Text Container-------------------
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotel['place'],
                  style: AppStyle.heedLine2
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
                Text(
                  hotel['destination'],
                  style: AppStyle.heedLine2
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
                Text(
                  'price/per night \$${hotel['price']} ',
                  style: AppStyle.heedLine2
                      .copyWith(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class daynamic {}
