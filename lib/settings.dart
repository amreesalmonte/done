import 'package:done/theme.dart';
import 'package:flutter/material.dart';
//import 'package:done/theme.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  bool mode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        iconTheme: IconThemeData(
            color: secondaryColor, //change your color here
          ),
      ),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          Text("Mode", style: TextStyle(fontSize: 15)),
          Switch(
            activeColor: Colors.black,
            value: mode,
            onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  mode = value;
                });})
        ],)
      ])
    );
  }
}