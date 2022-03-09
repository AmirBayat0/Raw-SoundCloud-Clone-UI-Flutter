import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 20, bottom: 10),
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(
            LineIcons.alternateArrowCircleUpAlt,
            color: Colors.grey,
            size: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(LineIcons.bell, color: Colors.grey, size: 35),
        ),
      ],
    );
  }
}