import 'package:book_tickets/base/rese/utiles/all_json.dart';
import 'package:book_tickets/screens/home/widgets/hotel.dart';
import 'package:book_tickets/screens/home/widgets/hotel_gird_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: const Text('All Hotels'),
        centerTitle: true,
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [Colors.green, Colors.blue]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.9,
             //mainAxisExtent: 200,
            ),
            itemCount:hotelList.length,

            itemBuilder: (context, index) {
              var singleHotel=hotelList[index];
              return HotelGirdView(hotel: singleHotel);
            }),
      ),
    );
  }
}
