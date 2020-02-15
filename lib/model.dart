import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class List {
  final int id;
  final String content;

  List({this.id, this.content});
}