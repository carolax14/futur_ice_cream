import 'package:flutter/material.dart';
import 'package:futur_ice_cream/components/bottom_nav_bar.dart';
import 'package:futur_ice_cream/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  int _selectdIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectdIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    // shop page
    // ShopPage(),

    // cart page
    //CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
