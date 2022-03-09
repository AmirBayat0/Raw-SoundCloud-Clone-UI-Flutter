import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../screens/home/home.dart';
import '../screens/search/search.dart';
import '../screens/stream/stream.dart';
import '../screens/library/library.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final List<Widget> screens = [
    HomeScreen(),
    StreamScreen(),
    SearchScreen(),
    LibraryeScreen()
  ];

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: _selectedIndex,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        rippleColor: Color.fromARGB(255, 27, 27, 27),
        hoverColor: Color.fromARGB(255, 29, 29, 29),
        gap: 8,
        activeColor: Color.fromARGB(255, 255, 255, 255),
        iconSize: 35,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Color.fromARGB(255, 32, 32, 32),
        color: Color.fromARGB(255, 70, 70, 70),
        tabs: [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.bolt,
            text: 'Stream',
          ),
          GButton(
            icon: LineIcons.search,
            text: 'Search',
          ),
          GButton(
            icon: LineIcons.stream,
            text: 'Library',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
