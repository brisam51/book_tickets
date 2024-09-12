import 'package:book_tickets/base/widgets/app_layoutBuilder_widget.dart';
import 'package:book_tickets/base/widgets/big_dot.dart';
import 'package:book_tickets/base/widgets/text_style_fourth.dart';
import 'package:book_tickets/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';
import '../rese/styles/app_style.dart';
import 'app_column_layout.dart';

class TicketView extends StatelessWidget {
  //
  final Map<String, dynamic> ticket;
  final bool whollSecreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.whollSecreen = false,
      this.isColor}
      );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(

        height: 170,
margin: EdgeInsets.symmetric(horizontal: 3),
        width: size.width * 0.80,
        child: Column(children: [
          //=============start blue part ticket===============


           Container(
              height: 85,
              // margin: const EdgeInsets.only(
              //   right: 20,
              // ),
              decoration: BoxDecoration(
                border: const Border(
                    bottom: BorderSide(color: Colors.blueGrey, width: 1.3)),
                color: isColor == null
                    ? AppStyle.ticketColor
                    : AppStyle.ticketColor2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  //---------------start top section oof blue part ticket----------
                  Container(

                    margin: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextStyleThird(
                          text: ticket['from']['code'],
                          isColor: isColor,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        const BigDot(
                          isColor: true,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(Icons.airplanemode_active,
                                        size: 27,
                                        color: isColor == null
                                            ? Color.fromARGB(255, 178, 178, 197)
                                            : AppStyle.planeSecondColor)),
                              ),
                            ],
                          ),
                        ),
                        const BigDot(
                          isColor: true,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        TextStyleThird(
                          text: ticket["to"]["cod"],
                          isColor: isColor,
                        ),
                      ],
                    ),
                  ),
                  //---------------End top section of blue part ticket--------------

                  //-------------start bottom section of blue part ticket-------------
                  Container(
                      margin: const EdgeInsets.only(
                        top: 5.0,
                        right: 15,
                        left: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleFourth(
                            text: ticket['from']['name'],
                            isColor: isColor,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          TextStyleFourth(
                            text: ticket['flying_time'],
                            isColor: isColor,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          TextStyleFourth(
                            text: ticket["to"]["name"],
                            isColor: isColor,
                          ),
                        ],
                      )
                      ),
                  //--------------end bottom section blue part ticket-------------
                ],
              ),
            ),

          //==============end blue part ticket==============

          //===============start Red part of ticket==============
          Container(
            height: 85,

            decoration: BoxDecoration(
              color: isColor == null ? Colors.red : Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //col-1
                    AppColumnLayout(
                      topText: ticket['date'],
                      bottomText: 'Date',
                      align: CrossAxisAlignment.start,
                    ),
                    //col-2
                    AppColumnLayout(
                      topText: ticket['departure_time'],
                      bottomText: 'Departure Time',
                      align: CrossAxisAlignment.center,
                    ),
                    //col-3
                    AppColumnLayout(
                      topText: ticket['number'].toString(),
                      bottomText: 'Number',
                      align: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]));
  }
}//end class TicketView
