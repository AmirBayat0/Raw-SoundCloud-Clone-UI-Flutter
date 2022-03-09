import 'package:flutter/material.dart';

class RepetitiousArtistProfile extends StatelessWidget {
  const RepetitiousArtistProfile({Key? key}) : super(key: key);

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
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/profile.png"))),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("NAME OF ARTIST"),
              SizedBox(
                height: 3,
              ),
              Text(
                "Location",
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
                  Icons.person,
                  color: Color.fromARGB(255, 134, 134, 134),
                  size: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: '121 ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 134, 134, 134),
                      fontSize: 13,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Followers',
                          style: TextStyle(fontWeight: FontWeight.w400)),
                    ],
                  ),
                )
              ]),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.more_vert, color: Color.fromARGB(255, 134, 134, 134))
        ],
      ),
    );
  }
}
