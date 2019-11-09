import 'package:flutter/material.dart';
void main() => runApp(LandPage());

class LandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAPP',
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text("TAPP", textAlign: TextAlign.center, style: TextStyle(fontSize: 50)),
                Text('Take action and protect the planet!', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Test"),
                        Text("Test")
                  ])])

          )
    ));
  }
  
}
