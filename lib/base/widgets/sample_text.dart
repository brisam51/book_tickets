import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  final double fontsize;
  final FontWeight? fontweight;
  final Color color;
  final String text;
  const SampleText({super.key,required this.text,this.fontsize=12.5,this.fontweight,this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style:TextStyle(fontSize: fontsize,fontWeight:fontweight ,color: color) ,);
  }
}
