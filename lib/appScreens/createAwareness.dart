import 'package:flutter/material.dart';

class createAwareness extends StatefulWidget {
  @override
  _create_awareness_screen createState() => _create_awareness_screen();
}


class _create_awareness_screen extends State<createAwareness> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      new AppBar(
        title: new Text("Update Fridge Items", style: TextStyle(fontSize: MediaQuery.of(context).size.width/20)),
        centerTitle: true,
        elevation: 10.0,
        leading: ,
        actions:  <Widget> [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width/60                ),
            child: IconButton(
              tooltip: 'Admin Login',
              icon: const Icon(Icons.filter_list),
              iconSize: MediaQuery.of(context).size.height/25,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> login_screen()));
              },
            ),
          ),
        ],
      ),
      body:
    );
  }
}

class Button_confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/23.5),
      child: Container(
        width: MediaQuery.of(context).size.width/2.45,
        height: MediaQuery.of(context).size.height/13,
        child: OutlineButton(
          //color: Colors.green,
          child: Text(
            "Confirm",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.green, fontSize: MediaQuery.of(context).size.width / 16.5),
          ),
          onPressed: () {
            confirmDialog(context);
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)),
          borderSide: BorderSide(color: Colors.green,width: 5.0),),
      ),
    );
  }
}
