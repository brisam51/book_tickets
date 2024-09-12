import 'package:book_tickets/app_routes.dart';
import 'package:book_tickets/base/widgets/ticket_view.dart';
import 'package:book_tickets/screens/home/all_hotels.dart';
import 'package:book_tickets/screens/home/bottom_navbar.dart';
import 'package:book_tickets/screens/home/all_tickets.dart';
import 'package:book_tickets/screens/home/widgets/hotel_details.dart';
import 'package:book_tickets/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNavbar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetails: (context) => const HotelDetails(),
      },
    );
  }
}
