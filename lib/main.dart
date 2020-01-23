import 'package:flutter/material.dart';
import 'package:done/theme.dart';
import 'package:done/body.dart';
import 'package:done/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'done',
      theme: ThemeData(fontFamily: 'Open Sans'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
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
          IconButton(
            icon: Icon(Icons.settings, color: secondaryColor),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          )
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
