import 'package:done/theme.dart';
import 'package:flutter/material.dart';
//import 'package:done/theme.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: mainColor,
        iconTheme: IconThemeData(
            color: secondaryColor, //change your color here
          ),
      ),
    );
  }
}