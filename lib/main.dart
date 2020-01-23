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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
          child: AppBar(
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
        flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text("Hello.", style: TextStyle(color: header, fontSize: 36)),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text("Here's what needs to be done.", style: TextStyle(color: header, fontSize: 18)),
              ),
          ],),
      ),),
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
