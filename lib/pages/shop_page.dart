import "package:flutter/material.dart";
import "package:futur_ice_cream/components/ice_cream_tile.dart";
import "package:futur_ice_cream/models/ice_cream.dart";
import "package:futur_ice_cream/models/ice_cream_shop.dart";
import "package:provider/provider.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
// add iceCream to cart
  void addToCart(IceCream iceCream) {
    // add to cart
    Provider.of<IceCreamShop>(context, listen: false).addItemToCart(iceCream);

    // let user know it add been successfuly added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Succefully added to cart !"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IceCreamShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // heading message
            children: [
              const Text(
                "Would you like an ice cream ?",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 25),

              // list of ice creams to buy
              Expanded(
                child: ListView.builder(
                    itemCount: value.iceCreams.length,
                    itemBuilder: (context, index) {
                      // get individual ice cream
                      IceCream eachIceCream = value.iceCreams[index];

                      // return the tile for this ice cream
                      return IceCreamTile(
                        iceCream: eachIceCream,
                        icon: Icon(Icons.add),
                        onPressed: () => addToCart(eachIceCream),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
