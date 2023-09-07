import 'package:flutter/material.dart';
import 'package:datingapp/Screens/login_screen.dart'; // Import the LoginScreen class

import 'app_constants.dart'; // Import your custom colors or constants if needed


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(
              'assets/images/png/ideogram(3).jpeg',
             // Set the height of the image
            ),


            SizedBox(height: 20), // Add spacing between icon and message
            Text(
              'Welcome to the Dating App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
