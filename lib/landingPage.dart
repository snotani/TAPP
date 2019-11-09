import 'package:flutter/material.dart';
void main() => runApp(LandPage());

class LandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Text('Hello World', textAlign: TextAlign.center, style: TextStyle(fontSize: 50)),
        ),
      ),
    );
  }
  
}