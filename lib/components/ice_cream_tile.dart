import "package:flutter/material.dart";
import "package:futur_ice_cream/models/ice_cream.dart";

// ignore: must_be_immutable
class IceCreamTile extends StatelessWidget {
  final IceCream iceCream;
  void Function()? onPressed;
  IceCreamTile({
    super.key,
    required this.iceCream,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        leading: Image.asset(iceCream.imagePath),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            iceCream.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text('${iceCream.price}€'),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.brown[300],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}