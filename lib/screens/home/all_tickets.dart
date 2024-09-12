import 'package:book_tickets/base/rese/utiles/all_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import '../../base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('All tickets'),
        gradient:
            LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.red, Colors.green]),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((e) => TicketView(ticket: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
