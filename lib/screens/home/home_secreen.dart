import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:book_tickets/base/rese/styles/media.dart';
import 'package:book_tickets/base/rese/utiles/all_json.dart';
import 'package:book_tickets/base/widgets/app_double_text.dart';
import 'package:book_tickets/base/widgets/ticket_view.dart';
import 'package:book_tickets/screens/home/widgets/hotel.dart';
import 'package:flutter/material.dart';

import '../../app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(top: 20.0, left: 5, right: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10.5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Good Morning', style: AppStyle.heedLine3),
                              const SizedBox(
                                height: 10.5,
                              ),
                              Text('Book Ticket', style: AppStyle.heedLine1)
                            ],
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(AppMedia.logo))),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search_outlined,
                              size: 30.0,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10.4,
                            ),
                            Text(
                              'Search Your Destination',
                              style: TextStyle(
                                  fontSize: 15.5,
                                  color: Colors.lightBlueAccent),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //-----------------------Ticket section---------------------
                Container(
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const AppDoubleText(
                    bigText: 'Upcoming Flight',
                    smalText: 'View all',
                    routeName: AppRoutes.allTickets,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map(
                          (singleTicket) => TicketView(
                            ticket: singleTicket,
                          ),
                        )
                        .toList(),
                  ),
                ),
                //------------------------Hotel Section--------------
                Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 20, top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const AppDoubleText(
                    bigText: 'Hotel',
                    smalText: 'View all',
                    routeName:AppRoutes.allHotels,
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map(
                            (hotel) => Hotel(
                              hotel: hotel,
                            ),
                          )
                          .toList(),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
