import 'package:flutter/material.dart';

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
  Widget build(context)
  {
    return Form(
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
    );
  }
  submit()
  {
    return RaisedButton(
      onPressed: (){},
      color: Colors.orangeAccent.shade200,
      child: Text("Login"),
    );
  }
}