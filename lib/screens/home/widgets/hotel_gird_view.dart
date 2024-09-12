import 'package:book_tickets/app_routes.dart';
import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:flutter/material.dart';

class HotelGirdView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelGirdView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,AppRoutes.hotelDetails);
      },
      child: Container(
        width: size.width * 0.70,

        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color:AppStyle.colorPrimary,
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------Image Container-------------------
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/images/${hotel['image']}')),
                  borderRadius: BorderRadius.circular(12.0)),
            ),
            //---------------Text Container-------------------
            Container(
              margin: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      hotel['place'],
                      style: AppStyle.heedLine4
                          .copyWith(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    hotel['destination'],
                    style: AppStyle.heedLine4
                        .copyWith(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    'price/per night \$${hotel['price']} ',
                    style: AppStyle.heedLine4
                        .copyWith(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


