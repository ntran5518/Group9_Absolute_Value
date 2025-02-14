/*
Group: 09
Team Member: Quyen Ha, Nini Tran, Zixiao Zhou
Course: INFO2310
File: Menu for Screens
Project name: Absolute Value
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal, // AppBar background color
          title: const Text("ABSOLUTE VALUE"),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.list), text: "Catalog"),
            Tab(icon: Icon(Icons.shopping_cart), text: "Shopping Cart"),
          ]),
        ),
        body: Container(
          color: Colors.blueGrey[50], // Body background color
          child: TabBarView(children: [
            const WelcomeScreen(),
            const CatalogScreen(),
            ShoppingCartScreen(
              cartItems: cartItems,
            ),
          ]),
        ),
      ),
    );
  }
}
