import 'package:tapp_application/utils/colors.dart';
import 'package:tapp_application/utils/functions.dart';
import 'package:flutter/material.dart';

class MyLiquidPage extends StatefulWidget {
  @override
  _MyLiquidPageState createState() => _MyLiquidPageState();
}

class _MyLiquidPageState extends State<MyLiquidPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MaterialColors.green,
      child: Text(
        'More information about the news: '
            'Lorem Ipsum is simply dummy text of the printing and '
            'typesetting industry. Lorem Ipsum has been the industry\'s'
            ' standard dummy text ever since the 1500s, when an unknown'
            ' printer took a galley of type and scrambled it to make a '
            'type specimen book. It has survived not only five centuries, '
            'but also the leap into electronic typesetting, remaining '
            'essentially unchanged. It was popularised in the 1960s with the '
            'release of Letraset sheets containing Lorem Ipsum passages, '
            'and more recently with desktop publishing software like Aldus '
            'PageMaker including versions of Lorem Ipsum.',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
          color: invertColorsMild(context),
        ),
      ),
    );
  }
}