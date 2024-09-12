import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:book_tickets/screens/search/widgets/app_text_icond.dart';
import 'package:book_tickets/screens/search/widgets/app_ticket_tabs.dart';
import 'package:book_tickets/screens/search/widgets/find_ticket.dart';
import 'package:book_tickets/screens/search/widgets/ticket_promotion.dart';
import 'package:flutter/material.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [

            Column(
              children: [
                Container(
                  child: Text(
                    'What Are\nLooking for?',
                    style: AppStyle.heedLine1,
                  ),
                ),
                const SizedBox(
                  height: 15.2,
                ),
                const AppTicketTabs(firstTab: 'All Tickest',secondTab: 'Hotel',),
                const SizedBox(
                  height: 25,
                ),
                const AppTextIcond(
                  icon: Icons.flight_takeoff,
                  text: 'Departure',
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppTextIcond(
                  icon: Icons.flight_land_outlined,
                  text: 'Arrival',
                ),
                const SizedBox(
                  height: 20,
                ),
                const FindTicket(),
                const SizedBox(
                  height: 30.0,
                ),
                const AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smalText: 'View all',
                  routeName: 'all_tickets',
                ),
                //===============start second section----------
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const TicketPromotion(),
                ),
              ],
            ),

        ],
      ),
    );
  }
}
