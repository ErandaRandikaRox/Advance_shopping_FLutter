import 'package:advance_shopping_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Move cart access inside build method
    final cart = context.watch<Shop>();

    return Scaffold(
      appBar: AppBar(
        title: Text('This is the cart page'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: ListView.builder(
              itemCount: cart.cart1.length, // Fixed spelling
              itemBuilder: (context, index) {
                final product = cart.cart1[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.price.toString()),
                  trailing: IconButton(
                    onPressed: () => cart.removeFromCart(product),
                    icon: Icon(Icons.remove_shopping_cart),
                  ),
                );
              },
            ),
          ),

          // Pay button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Implement payment functionality
              },
              child: Text('Proceed to Payment'),
            ),
          ),
        ],
      ),
    );
  }
}
