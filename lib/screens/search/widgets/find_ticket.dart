import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:flutter/material.dart';
class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin:const  EdgeInsets.only(left: 5,right:5),
      decoration:BoxDecoration(
        color: AppStyle.bgButton,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text('Find Ticket',style:AppStyle.heedLine3.copyWith(color: Colors.white))),

    );
  }
}
