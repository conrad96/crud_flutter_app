import 'package:flutter/material.dart';
import "src/layout.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:async";

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
           child:  Column(
             children: <Widget>[
               Layout(),
               FutureBuilder<RegUser>(
                 builder: (context,snapshot){
                   
                 },
               )
             ]
           )
         )
      ),
    );
  }
}