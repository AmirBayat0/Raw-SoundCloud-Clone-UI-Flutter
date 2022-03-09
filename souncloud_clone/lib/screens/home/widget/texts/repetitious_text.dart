import 'package:flutter/material.dart';

class RepetitiousText extends StatelessWidget {
  String title;
  RepetitiousText(this.title);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}
