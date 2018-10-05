import 'package:flutter/material.dart';
import "src/layout.dart";

void main() => runApp(new CrudApp());

class CrudApp extends StatelessWidget
{
  Widget build(context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CRUD")
        ),
         body: Center(
           child: ListView(
            children: <Widget>[
              Layout()
            ],
           ),
         )
      ),
    );
  }
}