
import 'package:flutter/material.dart';

class BelowUploadSectionWidet extends StatelessWidget {
  const BelowUploadSectionWidet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,left: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor : Colors.black ,
          ),
          SizedBox(width: 10,),
          Text("Based on your listening history", style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
