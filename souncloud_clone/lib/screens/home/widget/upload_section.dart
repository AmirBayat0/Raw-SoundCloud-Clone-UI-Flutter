import 'package:flutter/material.dart';

class UploadSectionWidget extends StatelessWidget {
  const UploadSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      width: currentWidth,
      height: currentHeight / 2,
      child: Stack(
        children: [
          Positioned(
            bottom: 3,
            right: 6,
            child: Container(
              width: 345,
              height: 330,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 134, 134, 134)),
                  color: Color.fromARGB(255, 200, 200, 200),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Positioned(
            bottom: 9,
            right: 14,
            child: Container(
              width: 355,
              height: 335,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 134, 134, 134)),
                  color: Color.fromARGB(255, 200, 200, 200),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 22,
            child: Container(
              width: 360,
              height: 340,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(153, 32, 32, 32)),
                        color: Color.fromARGB(255, 37, 37, 37),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Upload",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "PlayList • 20 Tracks",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
