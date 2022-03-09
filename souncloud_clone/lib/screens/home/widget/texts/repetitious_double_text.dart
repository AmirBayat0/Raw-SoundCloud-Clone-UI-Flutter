import 'package:flutter/material.dart';

class ReapetedDoubleText extends StatelessWidget {
  String title;
  String subtitle;
  ReapetedDoubleText({required this.title,required this.subtitle,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
