import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import './widget/appbar.dart';
import './widget/repetitious_search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: NestedScrollView(
                headerSliverBuilder: (ctx, i) => [
                      CustomAppBarSearch(),
                    ],
                body: MainBodySearch())),
      ),
    );
  }
}

class MainBodySearch extends StatefulWidget {
  @override
  State<MainBodySearch> createState() => _MainBodySearchState();
}

class _MainBodySearchState extends State<MainBodySearch> {
  bool showenResult = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            onChanged: (val) {},
            decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 228, 228, 228),
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 146, 146, 146),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                hintText: "Search",
                hintStyle: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 131, 131, 131))),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        showenResult
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "History",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  RepetitiousSearchResult(),
                  RepetitiousSearchResult(),
                  RepetitiousSearchResult(),
                  RepetitiousSearchResult(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showenResult = false;
                        });
                      },
                      child: Text(
                        "Clear search history",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      FadeInDown(
                        delay: Duration(microseconds: 300),
                        from: -30,
                        child: Text(
                          "Search SoundCloud",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      FadeInDown(
                        delay: Duration(microseconds: 600),
                        from: -60,
                        child: Text(
                          "Find artists, tracks, albums and playlists.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              )
      ],
    ));
  }
}
