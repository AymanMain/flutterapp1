import 'package:flutter/material.dart';
import 'signup_page.dart'; // Import the SignupPage widget here
import 'signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      routes: {
        '/signup': (context) => SignupPage(),
        '/signin': (context) => SigninPage(),
        // Define routes for Signup and Signin pages
        // Add a route for the Home page
        // Add more routes as needed for your app
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          SigninPage(), // Set SignupPage as the home page to display it initially
    );
  }
}
