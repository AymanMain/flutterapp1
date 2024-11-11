import 'package:flutter/material.dart';
import 'signup_page.dart' as signup_page;
import 'app_drawer.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      drawer: const AppDrawer(),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (text) => setState(() {
                  email = text;
                }),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                onChanged: (text) => setState(() {
                  password = text;
                }),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: () {
                  // Sign In logic goes here
                  print('Email: $email, Password: $password');
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                  child: Text('Sign Up'),
                  onPressed: () {
                    // Navigate to Sign Up Page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => signup_page.SignupPage()));
                    // Clear the text fields
                    setState(() {
                      email = '';
                      password = '';
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
