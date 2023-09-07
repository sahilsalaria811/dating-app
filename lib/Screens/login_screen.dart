import 'package:datingapp/Screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'forgot_password_screen.dart';
import 'welcome_screen.dart'; // Import the WelcomeScreen class

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Email Text Field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between fields
            // Password Text Field
            TextFormField(
              obscureText: true, // To hide the password input
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between fields
            // Login Button
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
              },
              child: Text('Login'),
            ),
            SizedBox(height: 8.0), // Add spacing between button and "Forgot Password"
            // Forgot Password Button
      TextButton(
        onPressed: () {
          // Navigate to the Forgot Password screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForgotPasswordScreen(),
            ),
          );
        },
        child: Text('Forgot Password?'),
      ),


            SizedBox(height: 16.0), // Add spacing at the bottom
            TextButton(
              onPressed: () {
                // Navigate to the Forgot Password screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ),
                );
              },

              child: Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}
