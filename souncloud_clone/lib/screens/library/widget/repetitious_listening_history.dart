import 'package:flutter/material.dart';

class RepetitiousListeningHistory extends StatelessWidget {
  const RepetitiousListeningHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      width: currentWidth,
      height: currentHeight / 9,
      
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 6),
            width: 70,
            height: 70,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("THE NAME OF MUSIC WITH A BIT INFO"),
              SizedBox(
                height: 3,
              ),
              Text(
                "NAME OF ARTIST",
                style: TextStyle(
                    color: Color.fromARGB(255, 134, 134, 134),
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3,
              ),
              Row(children: [
                Icon(
                  Icons.play_arrow,
                  color: Color.fromARGB(255, 134, 134, 134),
                  size: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: '390K ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 134, 134, 134),
                      fontSize: 13,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '•',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' 4:26'),
                    ],
                  ),
                )
              ]),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.more_vert,color: Color.fromARGB(255, 134, 134, 134))
        ],
      ),
    );
  }
}
