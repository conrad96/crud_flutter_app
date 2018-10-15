import 'package:flutter/material.dart';
import "loginScreen.dart";
import "registerScreen.dart";
import "../icons/crud_app_icons.dart" as customIcon;

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
            icon: Icon(customIcon.Crud_app.user_add),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => register())
              );
            },
            tooltip: "Register",

          ),
          IconButton(
            icon: Icon(customIcon.Crud_app.login),
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
      body: Center(
        child: ,
      ),

    );
  }

}