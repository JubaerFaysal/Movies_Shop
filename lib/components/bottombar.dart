import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
 class Mybottom extends StatelessWidget {
  void Function(int)? onTabChange;
    Mybottom({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
     child: GNav(
      color: const Color.fromARGB(255, 63, 53, 53),
      activeColor: const Color.fromARGB(255, 39, 160, 245),
      tabActiveBorder: Border.all(color: const Color.fromARGB(255, 7, 146, 232)),
      tabBackgroundColor: const Color.fromARGB(137, 142, 212, 243),
      tabBorderRadius: 25,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      onTabChange: (value) => onTabChange!(value),
      tabs: const[
      GButton(
        icon: Icons.movie,
        text: 'Watch Now',
        ),
        GButton(
        icon: Icons.watch_later,
        text: 'Watch Later',
        ),
      ]
      ),
    );
  }
}