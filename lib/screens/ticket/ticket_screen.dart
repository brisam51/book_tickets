import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:book_tickets/base/rese/styles/media.dart';
import 'package:book_tickets/base/rese/utiles/all_json.dart';
import 'package:book_tickets/base/widgets/app_column_layout.dart';
import 'package:book_tickets/base/widgets/app_layoutBuilder_widget.dart';
import 'package:book_tickets/base/widgets/ticket_view.dart';
import 'package:book_tickets/screens/search/widgets/app_ticket_tabs.dart';
import 'package:book_tickets/screens/ticket/widgets/ticket_positioned_circal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print('print pass  index ${args['index']}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Ticket'),
        centerTitle: true,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.lightBlueAccent,
              Colors.red,
              Colors.amber,
              Colors.teal,
              Colors.lightGreenAccent,
              Colors.white10
            ],
            stops: [
              0.3,
              0.5,
              0.3,
              0.6,
              0.6,
              0.6,
            ],
            tileMode: TileMode.repeated,
            transform: GradientRotation(10)),
      ),
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(
                height: 20.0,
              ),

              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 30,
              ),
              //Ticked
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TicketView(
                  ticket: ticketList[1],
                  //isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          topText: "Flutter DB",
                          bottomText: "passenger-name",
                          align: CrossAxisAlignment.start,
                          // isColor: true,
                        ),
                        AppColumnLayout(
                          topText: "526 8483201",
                          bottomText: "passport-Number ",
                          align: CrossAxisAlignment.center,
                          //isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          topText: "521 3252",
                          bottomText: "E-ticket Number",
                          align: CrossAxisAlignment.start,
                          // isColor: true,
                        ),
                        AppColumnLayout(
                          topText: "B2345G",
                          bottomText: "Booking Code ",
                          align: CrossAxisAlignment.center,
                          //isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visa_logo,
                                  scale: 12,
                                ),
                                Text(
                                  '   *** 23456',
                                  style: AppStyle.heedLine4.copyWith(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Payment Method',
                              style: AppStyle.heedLine4.copyWith(
                                  fontSize: 13.0, color: Colors.white),
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          topText: "\$294.99",
                          bottomText: "price ",
                          align: CrossAxisAlignment.center,
                          //isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //bottom of ticket details...
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        height: 70,
                        // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
                        data: 'https://www.dbestech.com',
                        drawText: false,
                        barcode: Barcode.code128(),
                      )),
                ),
              ),
            ],
          ),
          TicketPositionedCircle(
            pos: true,
          ),
          TicketPositionedCircle(
            pos: null,
          ),
        ],
      ),
    );
  }
}
