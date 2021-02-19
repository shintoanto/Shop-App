import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    this.title,
    this.quantity,
    this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _item;

  Map<String, CartItem> get items {
    return {...items};
  }

  void addItem(String productId, double price, String title) {
    if (items.containsKey(productId)) {
      //ChandeQuantity
      items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1));
    }
  }
}
