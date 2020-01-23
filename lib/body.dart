import 'package:flutter/material.dart';
import 'package:done/theme.dart';
import 'package:done/makeList.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // contains welcome message
        SliverAppBar(
          backgroundColor: mainColor,
          expandedHeight: 300.0,
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
        SliverList(delegate: ToDoList(),)
          ],)
        )
      ],
    );
  }
}
