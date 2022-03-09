import 'package:flutter/material.dart';

import '../navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /////////////////////////////////////
    //@CodeWithFlexz on Instagram
    //
    //AmirBayat0 on Github
    //Programming with Flexz on Youtube
    /////////////////////////////////////
    return MaterialApp(
      title: 'Raw SoundCloud Clone',
      debugShowCheckedModeBanner: false,
      home: CustomNavBar(),
    );
  }
}
