import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import "dart:convert";


class register extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
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
  String un="";
  String em = "";
  String pas ="";
  final regKey = GlobalKey<FormState>();

  Widget build(context)
  {


    return Form(
      key: regKey,
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
      onSaved: (String arg)
        {
          un = arg;
        },
    );
  }
  Widget email()
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
  Widget password()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
      ),
      onSaved: (String arg){
        pas=arg;
      },
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
      color: Colors.orangeAccent.shade200,
      child: Text("Register"),
      onPressed: (){
        regKey.currentState.save();
        var url = "http://192.168.1.118/portal/register.php";
        http.post(url,body:{"uname":un,"email":em,"password":pas}).then((response){
          print("${response.statusCode} \n ${response.body}");
        });
      },
    );
  }
}