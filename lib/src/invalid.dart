import 'package:flutter/material.dart';

class Invalid extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text("Incorrect Email or Password"),
      ),
    );
  }
}