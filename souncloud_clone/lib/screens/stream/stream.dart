import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../stream/widget/appbar.dart';

class StreamScreen extends StatelessWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: (ctx, i) => [
                  CustomAppBarStream(),
                ],
            body: MainBodySream()),
      ),
    );
  }
}

class MainBodySream extends StatefulWidget {
  const MainBodySream({Key? key}) : super(key: key);

  @override
  State<MainBodySream> createState() => _MainBodySreamState();
}

class _MainBodySreamState extends State<MainBodySream> {
  bool isLoaded = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoaded = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoaded
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircularProgressIndicator(),
              ),
            ],
          )
        : ListView(
            children: [
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
              PlayListSectionWidget(),
            ],
          );
  }
}

class PlayListSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      width: currentWidth,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "DjNIKNAC",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "posted a playlist • 22 days ago",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: currentWidth,
            height: currentHeight / 2,
            // color: Colors.yellow,
            child: Stack(
              children: [
                Positioned(
                  bottom: 3,
                  right: 6,
                  child: Container(
                    width: 345,
                    height: 330,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 134, 134, 134)),
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
                        border: Border.all(
                            color: Color.fromARGB(255, 134, 134, 134)),
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
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          width: 230,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(153, 32, 32, 32)),
                              color: Color.fromARGB(255, 37, 37, 37),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name of Music or Album",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "No. Of Tracks ",
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
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.favorite_outline_outlined,
                    size: 35, color: Colors.grey),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(LineIcons.retweet, size: 35, color: Colors.grey),
              Expanded(child: Container()),
              Icon(Icons.more_vert, size: 35, color: Colors.grey),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
