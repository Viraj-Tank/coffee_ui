import 'dart:ui';

import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {

  MyBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ],
    );
  }
}