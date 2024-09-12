import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.2,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Hotel Title'),
              background: Image.network(
                  'https://placehold.jp/3d4070/ffffff/500x350.png'),
            ),
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
