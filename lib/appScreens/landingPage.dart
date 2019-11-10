import 'package:flutter/material.dart';
void main() => runApp(LandPage());



class LandPage extends StatefulWidget {
  @override

  _LandPageState createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TAPP',
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('lib/images/logo.png'),
                      Text('Take action and protect the planet!', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                    ])
            )
        ));
  }
}
