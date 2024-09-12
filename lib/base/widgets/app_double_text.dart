import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smalText;
final String routeName;
  const AppDoubleText(
      {super.key, required this.bigText, required this.smalText,required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyle.heedLine2,
          ),
          InkWell(
              onTap: ()=>Navigator.pushNamed(context,routeName),
              // {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (BuildContext context) => AllTickets()),
              //   );
              // },
              child: Container(
                padding: const EdgeInsets.only(left: 10, top: 3),
                width: 80.0,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)),

                //View All Button
                child: Text(
                  smalText,
                  style: AppStyle.heedLine2
                      .copyWith(color: Colors.white, fontSize: 15),
                ),
              )),
        ],
      ),
    );
  }
}
