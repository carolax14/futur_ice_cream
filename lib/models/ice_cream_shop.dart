// ignore: unused_import
import "package:flutter/material.dart";
import 'ice_cream.dart';

class IceCreamShop extends ChangeNotifier {
  // ice cream for sale list
  final List<IceCream> _shop = [
    // vanilla
    IceCream(
        name: 'Vanilla', price: '2.5', imagePath: "lib/images/vanilla.png"),
    // chocolate
    IceCream(
        name: 'Cholote',
        price: '3',
        imagePath: "lib/images/corne_chocolate.png"),
    // strawberry
    IceCream(
        name: 'Strawberry', price: '3', imagePath: "lib/images/strawberry.png"),
    // lemon
    IceCream(
        name: 'Lagon', price: '2.5', imagePath: "lib/images/corne_blue.png"),
    // watermelon
    IceCream(
        name: 'raspberry',
        price: '3.5',
        imagePath: "lib/images/corne_pink.png"),
  ];
  // user cart
  final List<IceCream> _userCart = [];

  // get ice cream list
  List<IceCream> get iceCreams => _shop;

  //get user cart
  List<IceCream> get userCart => _userCart;

  // add ice cream to cart
  void addItemToCart(IceCream iceCream, int quantity) {
    // Add the given ice cream item to the user's cart.
    _userCart.add(iceCream);
    notifyListeners();
  }

  // remove ice cream from cart
  void removeItemFromCart(IceCream iceCream) {
    // Remove the given ice cream item from the user's cart.
    _userCart.remove(iceCream);
    // Notify any listeners that the state of the IceCreamShop has changed.
    // This will trigger any widgets that depend on the IceCreamShop to rebuild.
    notifyListeners();
  }
}
