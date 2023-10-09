import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;

  BuyPage(
      {required this.title, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Price: \$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
// ya chai logic chaiyo
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}