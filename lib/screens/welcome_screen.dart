/*
Group: 09
Team Member: Quyen Ha, Nini Tran, Zixiao Zhou
Course: INFO2310
File: Welcome Screen
Project name: Absolute Value
*/

// Program Imports
import 'package:flutter/material.dart';

// WELCOME SCREEN (Home page)
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomeScreenState(); // return the state
  }
}

// WELCOME SCREEN (Stateful)
class WelcomeScreenState extends State<WelcomeScreen> {
  // Fun emoji activity for the user on the Welcome Screen
  String emoji = "🙂"; // welcome page emoji
  /// Changes the welcome emoji state on click
  void changeEmoji() {
    setState(() {
      if (emoji == "🙂") {
        // change the emoji expression
        emoji = "😊";
      } else if (emoji == "😊") {
        emoji = "😄";
      } else if (emoji == "😄") {
        emoji = "😀";
      } else {
        emoji = "🙂";
      }
    });
  }

  /// Overrides the build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // app title -- Absolute Value
        title: const Text(
          "Welcome to Absolute Value",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context)
            .colorScheme
            .primary, // follow the app color scheme
      ),
      body: Center(
        // center elements on screen
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // center elements horizontally
          children: [
            const SizedBox(height: 20),
            // Changing emoji button for user to enjoy
            ElevatedButton(
              onPressed: changeEmoji,
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 100),
              ),
            ),
            const SizedBox(height: 20),
            // website description
            const Text(
              "Absolute Value is absolutely valuable!",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(45),
              child: Text(
                "Absolute Value is an eCommerce app for all your mathematical needs,\n"
                "with a wide variety of products, ranging from pencils to advanced\n"
                "textbooks and formula books.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
