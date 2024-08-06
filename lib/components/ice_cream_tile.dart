import "package:flutter/material.dart";
import "package:futur_ice_cream/models/ice_cream.dart";

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
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(iceCream.name),
        subtitle: Text(iceCream.price),
        leading: Image.asset(iceCream.imagePath),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
