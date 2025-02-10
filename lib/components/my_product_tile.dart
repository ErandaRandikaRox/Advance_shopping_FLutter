import 'package:advance_shopping_app/models/Shop.dart';
import 'package:advance_shopping_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Products products;
  const MyProductTile({super.key, required this.products});

  // add to cart method
  void addTOCart(BuildContext context) {
    // show a dialog box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Add this item to your cart?'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          // yes button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          // cancel button
          MaterialButton(
            // pop dialog box
            onPressed: () {
              // add to cart
              context.read<Shop>().addToCart(products);
              Navigator.pop(context);
            },
            child: Text('Yes'),
            disabledColor: Colors.red,
          ),

          
        
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      height: 450, // Reduced height
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: Image.asset(products.imagePath),
            ),
          ),

          SizedBox(
            height: 15,
          ),

          // Product Name
          Text(
            products.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // Product description
          Text(products.description),

          const Spacer(),

          // Product price + add to cart button
          Row(
            children: [
              Text(
                'Rs ${products.price.toStringAsFixed(2)}',
              ),
              SizedBox(
                width: 140,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () => addTOCart(context),
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
