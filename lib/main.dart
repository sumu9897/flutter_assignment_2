import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20), // Adding space between elements
              Image.asset(
                'assets/flutter.png', // Load image from assets
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Button Pressed!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Press Me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Change the button color to green
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
