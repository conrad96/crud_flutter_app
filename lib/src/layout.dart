import "package:flutter/material.dart";
import "../main.dart";
import "dart:async";
import "package:http/http.dart" as http;
import "dart:convert";

class Layout extends StatefulWidget
{
  createState()
  {
    return new LayoutState();
  }
}
class RegUser {
  String code;
  String message;
  RegUser({this.code,this.message});
  factory RegUser.fromJson(Map<String,dynamic> json){
    return RegUser(
      code: json['code'],
      message: json['message']
    );
  }
}
class LayoutState extends State<Layout>
{
  final formKey = GlobalKey<FormState>();
  final String ip = "192.168.1.118";

  String uname="";
  String pwd ="";
  String cpwd ="";

  Future<RegUser> registerUser(String arg1,String arg2) async
  {
     var response= await http.post("http://$ip/crud_flutter/add_data.php?uname=${arg1}&pwd=${arg2}");

     if(response.statusCode == 200)
     {
       return RegUser.fromJson(json.decode(response.body));
     }
     else 
     {
      throw Exception('Failed to Post Data');
     }
  }

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
        if(pwd.isNotEmpty)
        {
          if(arg.toLowerCase() != pwd.toLowerCase())
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
         registerUser(uname,pwd);
        }
      },
      color: Colors.teal,
      child: Text("Register"),
    );
  }
}