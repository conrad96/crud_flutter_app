import 'package:flutter/material.dart';
import "src/homeScreen.dart";

void main() => runApp(new CrudApp());

class CrudApp extends StatelessWidget
{
  Widget build(context)
  {
    return MaterialApp(
      title: "CRUD Application ",
      home: homeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}