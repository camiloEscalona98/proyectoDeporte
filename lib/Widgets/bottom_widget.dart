import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Screens/create_screen.dart';
import '../Screens/explore_screen.dart';
import '../Screens/home_screen.dart';
import '../Screens/profile_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

int index = 0;

List screens = const [
  Home(),
  Explore(),
  Create(),
  Profile(),
];

//
class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        color: Colors.grey.shade200,
        height: 50,
        index: index,
        onTap: (i) {
          setState(() => index = i);
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.black,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Icon(
            Icons.add,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
