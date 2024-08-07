import "package:flutter/material.dart";
import "package:futur_ice_cream/models/ice_cream.dart";

/*

ICE CREAM TILE

This is the tile seen on the shop page.
User can add to cart by tapping the tile.

*/

// ignore: must_be_immutable
class IceCreamTile extends StatelessWidget {
  final IceCream iceCream;
  void Function()? onPressed;
  bool isFavorited = false;
  IceCreamTile({
    super.key,
    required this.iceCream,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown[400],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    '${iceCream.price}€',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // ice cream picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 46.0, vertical: 26),
              child: Image.asset(iceCream.imagePath),
            ),

            // ice cream flavor
            Text(
              iceCream.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '120 kal',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),

            // love icon + view button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // love icon
                  IconButton(
                    icon: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                  ),

                  // view button
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.brown[300],
                    ),
                    onPressed: onPressed,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
