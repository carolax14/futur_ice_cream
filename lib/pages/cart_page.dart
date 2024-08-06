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

  // pay button tapped
  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<IceCreamShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // heading
                  const Text(
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
                              icon: const Icon(Icons.delete),
                              onPressed: () => removeFromCart(eachIceCream),
                            );
                          })),

                  // pay buttom
                  GestureDetector(
                    onTap: payNow,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
