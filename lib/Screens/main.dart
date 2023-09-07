import 'package:flutter/material.dart';
import 'package:datingapp/Screens/welcome_screen.dart'; // Import the WelcomeScreen class

import 'app_constants.dart'; // Import the constants file

void main() {
  runApp(MyApp()); // Your app's entry point
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        primarySwatch: customBlueMaterialColor, // Use your custom MaterialColor as the primary color
      ),
      home: WelcomeScreen(), // Set the welcome screen as the initial screen
    );
  }
}
