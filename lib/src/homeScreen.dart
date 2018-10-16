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
        child: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.only(top:35.0)),
            topIcon(),
            Container(margin: EdgeInsets.only(top:35.0)),
            buttons()
          ]
        )
      ),

    );
  }
  Widget buttons()
  {
    return Container(
      margin: EdgeInsets.only(top:25.0,left:25.0,right:25.0),
    child: Column(
      children: <Widget>[
        registerBtn(),
        loginBtn()
        ],
      )
    );
  }
  Widget topIcon()
  {
    return Icon(Icons.portrait,size: 100.0,color: Colors.lightBlue);
  }
  Widget registerBtn()
  {
    // return RaisedButton.icon(
    //   onPressed: (){},
    //   icon: Icon(customIcon.Crud_app.user_add),
    //   label: Text("Register"),
      
    // );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(80.0),
        shadowColor: Colors.teal.shade100,
        
        child: MaterialButton(
          minWidth: 95.0,
          height: 42.0,
          onPressed: (){},
          color: Colors.lightBlueAccent,
          child: Text("Register", style: TextStyle(color: Colors.white)),    
        ),

      )
    );
  }
  Widget loginBtn()
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(80.0),
        shadowColor: Colors.teal.shade100,
        
        child: MaterialButton(
          minWidth: 95.0,
          height: 42.0,
          onPressed: (){},
          color: Colors.lightBlueAccent,
          child: Text("Login", style: TextStyle(color: Colors.white)),    
        ),

      )
    );
  }

}