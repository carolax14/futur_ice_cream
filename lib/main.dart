import 'package:flutter/material.dart';
import 'package:futur_ice_cream/const.dart';
import 'package:futur_ice_cream/models/ice_cream_shop.dart';
import 'package:futur_ice_cream/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create the ChangeNotifierProvider widget, which provides an instance of
    return ChangeNotifierProvider(
      create: (context) => IceCreamShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor, // Couleur de fond globale
        ),
        home: const IntroPage(),
      ),
    );
  }
}
