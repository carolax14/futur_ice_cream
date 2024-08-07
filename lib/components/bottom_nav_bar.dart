import 'package:flutter/material.dart';
import 'package:futur_ice_cream/const.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

/*

GOOGLE BOTTOM NAV BAR

This nav bar at the bottom looks modern, currently there are 2 tabs:
  - shop
  - cart

*/

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      margin: const EdgeInsets.all(10),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabBorderRadius: 24,
        tabBackgroundColor: Colors.grey.shade300,
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Favorites',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Seetings',
          ),
        ],
      ),
    );
  }
}
