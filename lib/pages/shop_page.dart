import "package:flutter/material.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              child: ListView.builder(itemBuilder: (context, index) {
                // get individual ice cream

                // return the tile for this ice cream
              }),
            ),
          ],
        ),
      ),
    );
  }
}
