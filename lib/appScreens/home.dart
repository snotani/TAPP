import 'dart:math';

import 'package:tapp_application/appScreens/gradients_page.dart';
import 'package:tapp_application/utils/colors.dart';
import 'package:tapp_application/utils/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapp_application/widgets/sexy_tile.dart';

import 'material_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    List<String> topicNames = [
      'Unemployment/Low Wages',
      'Gay/Lesbian Rights',
      'Racism',
      'Poverty',
      'Lack of Education',
      'Animal Slavery'
    ];
    return Scaffold(
        appBar: AppBar(
            title: Text("TAPP"),
            centerTitle: true,
            leading: Image.asset("lib/images/logoHand.png"),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.filter_list),
                  alignment: Alignment.centerRight,
                  onPressed:() {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Country List'),
                            content: new ListView(
                              children: <Widget>[
                                new Column(
                                  children: <Widget>[
                                    new DropdownButton<String>(
                                      items: <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'].map((String value) {
                                        return new DropdownMenuItem<String>(
                                          value: value,
                                          child: new Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (_) {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                    );
                  }
              ),
            ]
        ),
        body: Container(
          child: Column(
            children: <Widget>[
          Expanded(
          child: GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 2.5,
            children: List.generate(
              topicNames.length,
                  (index) {
                return Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Hero(
                      tag: 'tile$index', //using a different hero widget tag for
                      // each page mapped to the page's index value
                      child: SexyTile(
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Hero(
                                tag: 'title${index}',
                                child: Material(
                                  color: Colors.transparent,
                                  child: Text(
                                    '${topicNames[index]}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.0,
                                      color: invertColorsStrong(context),
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          splashColor: MyColors.accentColor,
                          borderRadius: BorderRadius.circular(15.0),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) { return MyGradientsPage(); },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        ]
    )
    )
    );
  }
}