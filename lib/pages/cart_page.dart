import "package:flutter/material.dart";
import "package:futur_ice_cream/components/ice_cream_tile.dart";
import "package:futur_ice_cream/models/ice_cream.dart";
import "package:futur_ice_cream/models/ice_cream_shop.dart";
import "package:provider/provider.dart";

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove an item from the user's cart
  void removeFromCart(IceCream iceCream) {
    Provider.of<IceCreamShop>(context, listen: false)
        .removeItemFromCart(iceCream);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IceCreamShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // heading
                  Text(
                    'Your cart',
                    style: TextStyle(fontSize: 20),
                  ),

                  // list of art items
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            // get individual cart items
                            IceCream eachIceCream = value.userCart[index];

                            // return the tile for this ice cream
                            return IceCreamTile(
                              iceCream: eachIceCream,
                              icon: Icon(Icons.delete),
                              onPressed: () => removeFromCart(eachIceCream),
                            );
                          })),
                ],
              ),
            )));
  }
}
