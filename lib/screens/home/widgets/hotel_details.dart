import 'package:book_tickets/base/rese/styles/app_style.dart';
import 'package:book_tickets/base/rese/utiles/all_json.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args['index']);
    index = args["index"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.2,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  hotelList[index]['place'],
                  style: AppStyle.heedLine4.copyWith(color: Colors.blue[600]),
                ),
                background:
                    Image.asset('assets/images/${hotelList[index]['image']}'),),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Lorem Ipsum is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will look once a piece of content is finished, during the planning phase Lorem Ipsum is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will look once a piece of content is finished, during the planning phase  Lorem Ipsum is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will '
                    ' look once a piece of content is finished, during the planning phase'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.8),
                child: Text(
                  'more Text',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Image.network(
                          'https://placehold.jp/3d4070/ffffff/200x200.png');
                    }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
