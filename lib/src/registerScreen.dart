import 'package:flutter/material.dart';

class register extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),

      ),
      body: registerScreen(),
    );
  }
}
class registerScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _registerScreen();
  }
}
class _registerScreen extends State<registerScreen>
{
  Widget build(context)
  {
    return Form(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            username(),
            email(),
            password(),
            cpassword(),
            Container(margin: EdgeInsets.only(top:10.0)),
            registerBtn()
          ],
        ),
      ),
    );
  }
  Widget username()
  {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Username",
      ),
    );
  }
  Widget email()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
      ),
    );
  }
  Widget password()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
      ),
    );
  }
  Widget cpassword()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
      ),
    );
  }
  Widget registerBtn()
  {
    return RaisedButton(
      child: Text("Register"),
      onPressed: (){},
    );
  }
}