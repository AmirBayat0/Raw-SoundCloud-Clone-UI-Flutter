import 'package:flutter/material.dart';

class RepetitiousListTile extends StatelessWidget {
  String title;
  RepetitiousListTile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 134, 134, 134)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 134, 134, 134),
                size: 15,
              ),
            ),
            
          ]),
    );
  }
}
