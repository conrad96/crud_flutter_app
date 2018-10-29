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
        backgroundColor: Colors.orange,
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
        child: Container(
          margin: EdgeInsets.all(10.0),
          
        )
      ),

    );
  }
  Widget buttons(context)
  {
    return Container(
      margin: EdgeInsets.only(top:25.0,left:25.0,right:25.0),
    child: Row(
      children: <Widget>[
        registerBtn(context),
       Container(margin: EdgeInsets.only(left: 80.0),),
        loginBtn(context)
        ],
      )
    );
  }
  Widget topIcon()
  {
    return Icon(Icons.portrait,size: 100.0,color: Colors.orangeAccent);
  }
  Widget registerBtn(context)
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
        shadowColor: Colors.orangeAccent.shade200,
        
        child: MaterialButton(
          minWidth: 95.0,
          height: 42.0,
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => register()));
          },
          color: Colors.orangeAccent,
          child: Text("Register", style: TextStyle(color: Colors.white)),    
        ),

      )
    );
  }
  Widget loginBtn(context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(80.0),
        shadowColor: Colors.orangeAccent.shade200,
        
        child: MaterialButton(
          minWidth: 95.0,
          height: 42.0,
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => login())
            );
          },
          color: Colors.orangeAccent,
          child: Text("Login", style: TextStyle(color: Colors.white)),    
        ),

      )
    );
  }

}