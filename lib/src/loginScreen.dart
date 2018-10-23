import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import "dart:convert";

class login extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Login"),
      ),
      body: loginScreen(),
    );
  }
}

class loginScreen extends StatefulWidget
{
    createState()
    {
      return  _loginScreenState();
    }
}
class _loginScreenState extends State<loginScreen>
{
  final loginKey = GlobalKey<FormState>();
  String em="";
  String pass="";
  Widget build(context)
  {
    return Form(
      key: loginKey,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            email(),
            password(),
            submit()
          ],
        ),
      ),
    );
  }
  email()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
      ),
      onSaved: (String arg){
        em=arg;
      },
    );
  }
  password()
  {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
      ),
      onSaved: (String arg){
        pass=arg;
      },
    );
  }
  submit()
  {
    return RaisedButton(
      onPressed: (){
        loginKey.currentState.save();

      },
      color: Colors.orangeAccent.shade200,
      child: Text("Login"),
    );
  }
}