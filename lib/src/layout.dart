import "package:flutter/material.dart";

class Layout extends StatefulWidget
{
  createState()
  {
    return new LayoutState();
  }
}
class LayoutState extends State<Layout>
{
  final formKey = GlobalKey<FormState>();
  String uname="";
  String pwd ="";
  String cpwd ="";
  Widget build(context)
  {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            username(),
            password(),
            cpassword(),
            Container(margin: EdgeInsets.only(top:15.0)),
            submitBtn()
          ]
        ) 
      )
    );
  }
  Widget username(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Username",
      ),
      validator: (String arg){
        if(arg.length < 4)
        {
          return "Username should be atleast more than  5 characters";
        }
      },
      onSaved: (String arg){
        uname = arg;
      },
    );
  }

  Widget password()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password"
      ),
      validator: (String arg){
        if(arg.length < 5)
        {
          return "Password should be more than 5 characters";
        }
      },
      onSaved: (String arg)
      {
        pwd = arg;
      },
    );
  }
  Widget cpassword()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password"
      ),
      validator: (String arg)
      {
        if(arg.length < 5)
        {
          return "Password should be more than 5 characters";
        }
        if(!pwd.isEmpty )
        {
          if(arg != pwd)
            {
              return "Password Mismatch. Try Again";
            }
        }
      },
      onSaved: (String arg)
      {
        cpwd = arg;
      },
    );
  }
  Widget submitBtn()
  {
    return RaisedButton(
      onPressed: (){
        if(formKey.currentState.validate())
        {
          //check pwd nd cpwd
          print("okay");
        }
      },
      color: Colors.teal,
      child: Text("Register"),
    );
  }
}