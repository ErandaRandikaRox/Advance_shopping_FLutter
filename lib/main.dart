import 'package:advance_shopping_app/Themes/light_mode.dart';
import 'package:advance_shopping_app/pages/Intro_page.dart';
import 'package:advance_shopping_app/pages/Shop_page.dart';
import 'package:advance_shopping_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:advance_shopping_app/models/Shop.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntoPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntoPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) =>  CartPage(),
      },
    );
  }
}
