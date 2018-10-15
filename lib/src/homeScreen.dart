import 'package:flutter/material.dart';
import "loginScreen.dart";
import "registerScreen.dart";

class homeScreen extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.home),
          tooltip: "Home",
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => homeScreen())
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.group),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => register())
              );
            },
            tooltip: "Register",

          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: ()
            {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => login())
              );
            },
            tooltip: "Login",
          )

        ],
      ),

    );
  }

}