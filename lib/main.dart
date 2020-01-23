import 'package:flutter/material.dart';
import 'package:done/theme.dart';
import 'package:done/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'done',
      theme: ThemeData(fontFamily: 'Open Sans'), // default font
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
  bool mode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      // constant app bar on top with settings button
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        actions: <Widget>[
          //redirects to settings
          Switch(
              activeColor: Colors.black,
              value: mode,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  mode = value;
                });
              })
        ],
      ),
      // contains welcome message and items
      body: Body(),
      // button to add to do item
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Clicked');
          },
          elevation: 0,
          splashColor: accentColor,
          tooltip: "Add item to list",
          backgroundColor: secondaryColor,
          child: Icon(Icons.add, color: mainColor)),
    );
  }
}
