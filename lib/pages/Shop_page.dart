import 'package:advance_shopping_app/components/my_drawer.dart';
import 'package:advance_shopping_app/components/my_product_tile.dart';
import 'package:advance_shopping_app/models/Shop.dart';
// import 'package:advance_shopping_app/components/my_list_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          // get each individual products from shop

          final product = products[index];
          // return as a products title UI
          return MyProductTile(products: product);
        },
      ),
    );
  }
}
