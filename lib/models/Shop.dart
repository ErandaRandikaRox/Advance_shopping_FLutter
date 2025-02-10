import 'package:advance_shopping_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Products> shop = [
    // product 1
    Products(
      name: 'Aviator Sunglasses',
      price: 99.9,
      description: ''' Aviator sunglasses, originally designed for pilots, feature large, teardrop-shaped lenses that provide maximum eye coverage. They often have thin metal frames and a double bridge for added durability. Known for their timeless and stylish appeal, aviators suit various face shapes and offer excellent sun protection. Popular among both men and women, they come in a range of lens colors, including mirrored and polarized options.''',
      imagePath: 'assets/1.jpg',
    ),

    Products(
      name: 'Round Sunglasses',
      price: 99.9,
      description: ''' Round sunglasses feature circular lenses that create a retro and artistic aesthetic. Inspired by classic 1960s and 1970s fashion, they are often associated with creative and free-spirited individuals. These sunglasses come in various frame materials, from metal to acetate, offering both lightweight and durable options. They are best suited for people with angular or square face shapes, adding a soft and stylish contrast.''',
      imagePath: 'assets/2.jpg',
    ),

    Products(
      name: 'Wayfarer Sunglasses',
      price: 99.9,
      description: ''' Wayfarer sunglasses have a bold, trapezoidal frame that gives them a distinctive and modern look. Introduced in the 1950s, they quickly became a fashion icon and remain popular today. Typically made of acetate, these sunglasses are sturdy and versatile, making them a great choice for casual and formal wear. Their thick frames and wide lenses provide excellent sun protection while enhancing facial features.''',
      imagePath: 'assets/3.jpg',
    ),

    Products(
      name: 'Sport sunglasses',
      price: 99.9,
      description: '''Sport sunglasses are designed for athletes and outdoor enthusiasts, offering durability, flexibility, and high-performance features. They usually have wraparound frames for a secure fit and impact-resistant lenses to withstand tough conditions. Many sport sunglasses include polarized or UV-protected lenses to reduce glare and enhance vision. Ideal for cycling, running, and other physical activities, they provide comfort and functionality without compromising style.''',
      imagePath: 'assets/4.jpg',
    ),
  ];

  // user cart

  List<Products> _cart = [];

  // get priduct list

  List<Products> get shop1 => shop;

  // get user cart

  List<Products> get cart1 => _cart;

  // add items to cart
  void addToCart(Products item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove items fro cart
  void removeFromCart(Products item) {
    _cart.remove(item);
    notifyListeners();
  }
}
