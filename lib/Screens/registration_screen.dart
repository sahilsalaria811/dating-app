import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'), // Change the title to "Sign Up"
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // First Name Field
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 16.0),

            // Last Name Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 16.0),

            // Email Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Email',),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),

            // Mobile Number Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile Number'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),

            // Password Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, // Hide the password
            ),
            SizedBox(height: 16.0),

            // Confirm Password Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true, // Hide the password
            ),
            SizedBox(height: 24.0),

            ElevatedButton(
              onPressed: () {
                // Implement registration logic here
              },
              child: Text('Sign Up'), // Change the button text to "Sign Up"
            ),

            TextButton(
              onPressed: () {
                // Navigate back to the login screen
                Navigator.pop(context);
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
