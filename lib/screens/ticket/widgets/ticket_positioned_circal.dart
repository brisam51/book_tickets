import 'package:flutter/material.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? pos;
  const TicketPositionedCircle({super.key,this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos==true?4:null,
      right: pos==true?null:4,
      top: 350,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.green)
        ),
        child: CircleAvatar(backgroundColor:Colors.green[900] ,maxRadius: 5.8,),

      ),
    );
  }
}
