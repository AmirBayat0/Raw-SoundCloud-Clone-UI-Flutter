import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../recentlyPlayed/widget/appbar.dart';
import './widget/repetitious_artist_profile.dart';
import './widget/repetitious_music_cover.dart';

class RecentlyPlayedScreen extends StatefulWidget {
  @override
  State<RecentlyPlayedScreen> createState() => _RecentlyPlayedScreenState();
}

class _RecentlyPlayedScreenState extends State<RecentlyPlayedScreen> {
  bool trash = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: (ctx, i) => [
                  CustomAppBarRecentlyPlayed(() {
                    setState(() {
                      trash = true;
                    });
                    Navigator.pop(context);
                  }),
                ],
            body: MainBodyRecentlyPlayed(trash)),
      ),
    );
  }
}

class MainBodyRecentlyPlayed extends StatelessWidget {
  bool trash;
  MainBodyRecentlyPlayed(this.trash);

  @override
  Widget build(BuildContext context) {
    return trash
        ? FadeInLeft(
            delay: Duration(microseconds: 600),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Find all the tracks you\'ve listened to here",
                    style: TextStyle(
                        color: Color.fromARGB(255, 134, 134, 134),
                        fontWeight: FontWeight.w400))),
          )
        : ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "No. of Tracks + recently played items",
                    style: TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
                  ),
                ),
                RepetitiousArtistProfile(),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousMusicCover(null),
                RepetitiousArtistProfile(),
                RepetitiousArtistProfile(),
                RepetitiousArtistProfile(),
                RepetitiousMusicCover(null),
                RepetitiousMusicCover(null),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousMusicCover(null),
                RepetitiousArtistProfile(),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousMusicCover(null),
                RepetitiousArtistProfile(),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousArtistProfile(),
                RepetitiousMusicCover(
                  Icon(
                    Icons.private_connectivity,
                    color: Color.fromARGB(255, 134, 134, 134),
                    size: 25,
                  ),
                ),
                RepetitiousArtistProfile(),
              ],
            ),
          ]);
  }
}
