import 'package:flutter/material.dart';

import '../../../base/rese/styles/app_style.dart';
import '../../../base/rese/styles/media.dart';
class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Row(
      children: [
        Column(
          children: [
            Container(
              width: size.width * .42,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 190,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            //  color: Colors.grey,
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 2))
                        ],
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image:
                            AssetImage(AppMedia.plane_sit))),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    child: const Text(
                      '20% Discount\n on the early booking of this flight Dont miss',
                      style: TextStyle(
                          shadows: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 3,
                                color: Colors.grey,
                                offset: Offset(3, 5)),
                          ],
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * .42,
                  height: 195,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.4,
                        0.6,
                        0.9,
                      ],
                      colors: [
                        Colors.yellow,
                        Colors.red,
                        Colors.indigo,
                        Colors.teal,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFc471ed),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount \n for survey',
                        style: AppStyle.heedLine2
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.2,
                      ),
                      Text(
                        'Tack the survey about our services and get',
                        style: AppStyle.heedLine4
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -15,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(

                            image: AssetImage(
                                'assets/images/ponz.png')),
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3,color:  Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical:30),
              width: size.width * .42,
              height: 195,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.red,
                        Colors.cyan,
                        Colors.green,
                        Colors.blue,
                        Colors.yellow,
                      ],
                      stops: [
                        0.1,
                        0.4,
                        0.5,
                        0.7,
                        0.9
                      ]
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(3,7),
                      blurRadius: 5,
                      spreadRadius: 3,
                    )
                  ]                            ),
              child: Column(
                children: [
                  Text('Take Love',style: AppStyle.heedLine2.copyWith(color: Colors.white),),
                  SizedBox(
                    height: 5,
                  ),
                  Container(

                    width: 100,
                    height: 95,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/imogi_take_love.png'))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
