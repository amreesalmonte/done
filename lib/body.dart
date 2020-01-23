import 'package:flutter/material.dart';
import 'package:done/theme.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  List<String> items = [];
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 2, top: 2),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: secondaryColor,
              child: Row(children: <Widget>[
                Checkbox(
                  checkColor: secondaryColor,
                  activeColor: mainColor,
                  value: checked,
                  onChanged: (value) {
                    print("VALUE : $checked");
                    setState(() {
                      checked = value;
                    });
                  },
                ),
                Text("test")
              ])));
    }));
  }
}
