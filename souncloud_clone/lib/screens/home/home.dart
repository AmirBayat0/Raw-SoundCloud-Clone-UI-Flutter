import 'package:flutter/material.dart';

import './widget/texts/repetitious_double_text.dart';
import './widget/upload_section.dart';
import './widget/repetitious_listview.dart';
import './widget/appbar.dart';
import './widget/texts/repetitious_text.dart';
import './widget/texts/below_upload_section.dart';
import './widget/follow_artist_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: (ctx, i) => [
                  CustomAppBar(),
                ],
            body: MainBody()),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ReapetedDoubleText(
            title: "More of what you like",
            subtitle: "Suggestions based on what you\'ve liked or played"),
        SizedBox(
          height: 5,
        ),
        RepetitiousListView(),
        SizedBox(
          height: 10,
        ),
        RepetitiousText("Recently Played"),
        SizedBox(
          height: 5,
        ),
        RepetitiousListView(),
        SizedBox(
          height: 10,
        ),
        ReapetedDoubleText(
            title: "The Uplooad",
            subtitle: "Newly posted tracks. Just for you"),
        UploadSectionWidget(),
        BelowUploadSectionWidet(),
        SizedBox(
          height: 10,
        ),
        ReapetedDoubleText(
            title: "Artist You Should Follow",
            subtitle: "Based on your listening history"),
        SizedBox(
          height: 5,
        ),
        FollowArtistSection(),
        SizedBox(
          height: 5,
        ),
        ReapetedDoubleText(
            title: "Party",
            subtitle: "Popular playlists from the Soundcloud community"),
        SizedBox(
          height: 10,
        ),
        RepetitiousListView(),
        SizedBox(
          height: 5,
        ),
        ReapetedDoubleText(
            title: "Sleep",
            subtitle: "Popular playlists from the Soundcloud community"),
        SizedBox(
          height: 10,
        ),
        RepetitiousListView(),
        SizedBox(
          height: 5,
        ),
        ReapetedDoubleText(
            title: "Chill",
            subtitle: "Popular playlists from the Soundcloud community"),
        SizedBox(
          height: 10,
        ),
        RepetitiousListView(),
        SizedBox(
          height: 5,
        ),
        ReapetedDoubleText(
            title: "Charts: New & hot",
            subtitle: "Up-and-coming tracks on SoundCloud"),
        UploadSectionWidget(),
      ],
    );
  }
}
