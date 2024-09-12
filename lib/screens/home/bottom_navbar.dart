// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:book_tickets/screens/home/home_secreen.dart';
import 'package:book_tickets/screens/search/search_screen.dart';
import 'package:book_tickets/screens/ticket/ticket_screen.dart';

import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final appSecreen = [
    const HomeScreen(),
    const SearchScreen(),
    const TickeScreen(),
    const Center(child: Text('profile')),
  ];
  int _selectedIndex = 0;

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: appSecreen[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xFF526200),
        items: [
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_filled),
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.search_outlined),
              icon: Icon(
                Icons.saved_search_outlined,
              ),
              label: 'Search'),
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.airplane_ticket),
              icon: Icon(
                Icons.airplane_ticket_outlined,
              ),
              label: 'Ticket'),
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
