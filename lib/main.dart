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
                  color: Colors.red, // red color
                  fontWeight: FontWeight.bold, // Custom bold text
                  fontSize: 24,
                ),
              ),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              // Image from Internet
              Image.network(
                'https://appdeveloperalex.com/image/ALEXMAJUMDER_squr.jpg',
                height: 200,
              ),
              SizedBox(height: 20),

              Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    onPressed: () {
                      // Snackbar displayed when the button is pressed
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Button Pressed!'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Custom green button color
                    ),
                    child: Text('Press Me'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
