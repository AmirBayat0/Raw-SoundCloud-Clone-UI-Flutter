import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class RepetitiousSearchResult extends StatelessWidget {
  const RepetitiousSearchResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Name of Music or Artist",
            style: TextStyle(
                fontSize: 17, color: Color.fromARGB(255, 136, 136, 136), fontWeight: FontWeight.w500),
          ),
          Icon(LineIcons.trash, color: Color.fromARGB(255, 136, 136, 136)),

        ],
      ),
    );
  }
}
