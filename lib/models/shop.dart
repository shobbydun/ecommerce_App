import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      description: "Walk with Pride,\nQuality assured",
      name: "Shoes",
      price: 1720.44,
      imagePath: 'assets/shoe.png'
    ),

    //product 2
    Product(
      description: "Branded and designed with alt most Pride",
      name: "Hood",
      price: 883.44,
      imagePath: 'assets/hood.png'
    ),

    //product 3
    Product(
      description: "See through quality Furbished product",
      name: "glasses",
      price: 1200,
      imagePath: 'assets/glasses.png'
    ),

    //product 4
    Product(
      description: "Pagani Brand,\nWatch the time to be Watched",
      name: "Watch",
      price: 14000,
      imagePath: 'assets/watch.png'
    )
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get User cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
