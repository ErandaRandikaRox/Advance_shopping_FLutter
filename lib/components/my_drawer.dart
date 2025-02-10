import 'package:advance_shopping_app/components/my_list_title.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Drawer Header: Logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Shop title
          MyListTitle(
              text: 'Shop',
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          // Cart title
          MyListTitle(
              text: 'Cart',
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cart_page');
              }),

          MyListTitle(
              text: 'Histry',
              icon: Icons.history,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cart_page');
              }),

           MyListTitle(
              text: 'Payment',
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cart_page');
              }),


           MyListTitle(
              text: 'Account',
              icon: Icons.account_balance_wallet,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cart_page');
              }),




          // Push logout button to the bottom
          const Spacer(),

          // Logout button at the bottom
          MyListTitle(
              text: 'Log out',
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'into_page', (route) => false);
              }),

          const SizedBox(height: 20), // Add spacing from the bottom
        ],
      ),
    );
  }
}
