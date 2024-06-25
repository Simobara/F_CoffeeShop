import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: "Long Black",
      price: "4.10",
      imagePath: "lib/images/black.png",
    ),
    //latte
    Coffee(
      name: "Latte",
      price: "4.20",
      imagePath: "lib/images/latte.png",
    ),
    //expresso
    Coffee(
      name: "Expresso",
      price: "4.30",
      imagePath: "lib/images/expresso.png",
    ),
    //iced
    Coffee(
      name: "Iced",
      price: "4.40",
      imagePath: "lib/images/iced.png",
    ),
  ];

//user cart
  final List<Coffee> _userCart = [];

//get the coffe list
  List<Coffee> get coffeeShop => _shop;

//get user cart
  List<Coffee> get userCart => _userCart;

//add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

//remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
