import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      AppTabs(
        tabText: firstTab,
      ),
      AppTabs(
        tabText: secondTab,
        tabBorder: true,
        tabColor: true,
      ),
    ]);
  
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  //final size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // margin: const EdgeInsets.only(left: 10),
      width: size.width * .47,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: tabColor == false ? Colors.white : Colors.green,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
