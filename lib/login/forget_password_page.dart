
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Colors.red, // Red theme for the app bar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
// ya chai logic halna parxa
                },
                child: Text('Send Reset Link'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red theme for the button
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}