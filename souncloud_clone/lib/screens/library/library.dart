import 'package:flutter/material.dart';

import '../recentlyPlayed/recently_played.dart';
import '../listeningHistory/listening_history.dart';
import './widget/appbar.dart';
import './widget/repetitious_listtile.dart';
import './widget/repetitious_listening_history.dart';
import '../home/widget/texts/repetitious_text.dart';
import '../home/widget/repetitious_listview.dart';

class LibraryeScreen extends StatelessWidget {
  const LibraryeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: (ctx, i) => [
                  CustomAppBarLibrary(),
                ],
            body: MainBodyLibrary()),
      ),
    );
  }
}

class MainBodyLibrary extends StatelessWidget {
  const MainBodyLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      width: currentWidth,
      height: currentHeight,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RepetitiousListTile("Liked tracks"),
            RepetitiousListTile("Playlists"),
            RepetitiousListTile("Albums"),
            RepetitiousListTile("Following"),
            RepetitiousListTile("Stations"),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RepetitiousText("Recently Played"),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 4),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RecentlyPlayedScreen())));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RepetitiousListView(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RepetitiousText("Listening history"),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 4),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => ListeningHistoryScreen())));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: currentWidth,
              height: currentHeight / 3,
              child: ListView(children: [
                RepetitiousListeningHistory(),
                RepetitiousListeningHistory(),
                RepetitiousListeningHistory(),
                RepetitiousListeningHistory(),
                RepetitiousListeningHistory(),
                RepetitiousListeningHistory(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
