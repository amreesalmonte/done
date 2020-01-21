import 'package:flutter/material.dart';
import 'package:done/theme.dart';

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
            )
          ],
        );
  }
}