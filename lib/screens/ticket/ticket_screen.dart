import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:book_tickets/base/rese/styles/media.dart';
import 'package:book_tickets/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

class TickeScreen extends StatelessWidget {
  const TickeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Tickets',
              style: AppStyle.heedLine1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'bbb',
            secondTab: 'bb',
          )
        ],
      ),
    );
  }
}
