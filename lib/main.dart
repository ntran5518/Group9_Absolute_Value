/*
GROUP: 01
FILE: Menu for Screens (invoking tabular navigation)
PAGE AUTHOR: Ana Isakov
COURSE: PROG2435
SECTION: 2
ASSIGNMENT: Final Project
APPLICATION NAME: Absolute Value (eCommerce App that sells math products)
*/

// --- Program imports ---
// Packages
import 'package:flutter/material.dart';

// Screens
import 'screens/welcome_screen.dart';
import 'screens/catalog_screen.dart';
import 'screens/shopping_cart_screen.dart';

// Main method
void main() {
  runApp(const MyApp()); // runs the app
}

// Application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuScreen(), // returns menu screen
    );
  }
}

// MENU SCREEN (Stateless)
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key}); // constructor

  // Overrides the build method
  @override
  Widget build(BuildContext context) {
    // Tab menu for navigation (across the top of the appbar)
    return DefaultTabController(
      length: 3, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary, // following the app color scheme
            title: const Text("ABSOLUTE VALUE "), // application name -- "Absolute Value"
            centerTitle: true,
            bottom: const TabBar(tabs: [ // list of navigation tabs
              Tab(icon: Icon(Icons.home), text: "Home"), // with a page title & icon each
              Tab(icon: Icon(Icons.list), text: "Catalog"),
              Tab(icon: Icon(Icons.shopping_cart), text: "Shopping Cart"),
            ])),
        body: TabBarView(children: [ // views to return when user navigates using the nav bar
          const WelcomeScreen(),
          const CatalogScreen(),
          ShoppingCartScreen(cartItems: cartItems,), // shopping cart is empty to begin
        ]),
      ),
    );
  }
}

