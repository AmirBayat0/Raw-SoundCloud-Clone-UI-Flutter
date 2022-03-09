import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class CustomAppBarRecentlyPlayed extends StatelessWidget {
  VoidCallback trashing;
  CustomAppBarRecentlyPlayed(this.trashing);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      pinned: true,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(bottom: 13, right: 90),
        title: Text(
          "Recently played",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      titleSpacing: 1.0,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      "Clear recently played?",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text(
                              'Are you sure you want to clear your listening history? You won\'t be able to undo this action.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 134, 134, 134))),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 109, 109, 109)),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      TextButton(
                          child: const Text(
                            'CLEAR',
                            style: TextStyle(
                                color: Color.fromARGB(255, 223, 141, 19)),
                          ),
                          onPressed: trashing),
                    ],
                  );
                },
              );
            },
            child: Icon(
              LineIcons.trash,
              color: Colors.grey,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}
