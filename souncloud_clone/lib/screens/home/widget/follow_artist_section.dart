import 'package:flutter/material.dart';

import '../widget/model/followd_artist.dart';

class FollowArtistSection extends StatefulWidget {
  const FollowArtistSection({Key? key}) : super(key: key);

  @override
  State<FollowArtistSection> createState() => _FollowArtistSectionState();
}

class _FollowArtistSectionState extends State<FollowArtistSection> {
  List<Artist> followed = [
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
    Artist(false),
  ];

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      width: currentWidth,
      height: currentHeight / 3.3,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: followed.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            width: currentWidth / 2.5,
            
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffB1B1B1),
                  backgroundImage: AssetImage("assets/images/profile.png"),
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Name of artist",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                followed[index].isFollwed
                    ? GestureDetector(
                       onTap: () {
                          setState(() {
                            followed[index].isFollwed = !followed[index].isFollwed;
                          });
                        },
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 221, 221),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Following",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                    )
                    :GestureDetector(
                        onTap: () {
                          setState(() {
                            followed[index].isFollwed = !followed[index].isFollwed;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ) 
              ],
            ),
          );
        }),
      ),
    );
  }
}
