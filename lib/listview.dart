import 'package:flutter/material.dart';

class NewListView extends StatefulWidget {
  @override
  _NewListView createState() => _NewListView();
}

class _NewListView extends State<NewListView> {
  List<String> listItems = <String>["test1", "test2", "test3"];

  @override
  Widget build(BuildContext context) {
    return Container (
      child: ListView.custom(
        childrenDelegate: null
        )
    );
  }
}