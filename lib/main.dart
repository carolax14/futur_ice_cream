import 'package:flutter/material.dart';
import 'package:futur_ice_cream/models/ice_cream_shop.dart';
import 'package:futur_ice_cream/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create the ChangeNotifierProvider widget, which provides an instance of
    // the IceCreamShop class to its descendants
    return ChangeNotifierProvider(
      // Create the IceCreamShop instance
      create: (context) => IceCreamShop(),
      // Build the widget tree
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
