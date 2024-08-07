import 'package:futur_ice_cream/components/ice_cream_tile.dart';
import 'package:futur_ice_cream/models/ice_cream.dart';
import 'package:futur_ice_cream/models/ice_cream_shop.dart';
import 'package:futur_ice_cream/pages/ice_cream_order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CornetTab extends StatefulWidget {
  const CornetTab({super.key});

  @override
  State<CornetTab> createState() => _CornetTabState();
}

class _CornetTabState extends State<CornetTab> {
  // coffee page
  void goToIceCreamPage(IceCream iceCream) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => IceCreamOrderPage(
          iceCream: iceCream,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IceCreamShop>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: Text(
              'Popular',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 25, fontWeight: FontWeight.bold,
                color: Colors.brown[600],
              ),
            ),
          ),

          const SizedBox(height: 25),

          // list of coffee
          Expanded(
            child: GridView.builder(
              itemCount: value.iceCreams.length,
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.5,
              ),
              itemBuilder: (context, index) {
                // get individual IceCream
                IceCream eachIceCream = value.iceCreams[index];
                // return the tile for this IceCream
                return IceCreamTile(
                  iceCream: eachIceCream,
                  onPressed: () => goToIceCreamPage(eachIceCream),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
