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

class RegUser 
{
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

  registerUser() async
  {
      String url = "http://$ip/crud_flutter/add_data.php";
      var response = await http.post(url,
      body: {"uname":this.uname,"pwd":this.cpwd }
      ).then((r){

      var obj=json.decode(r.body);
      message(obj["message"],obj["code"]);

      });
  }
  Widget message(String str,int code)
  {
    if(code == 100)
      {
        return Text(str,
          style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.green),

        );
      }
    return Text(str,
      style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
    );
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
            submitBtn(),

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
      onSaved: (String argu){
        uname = argu;
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
      onSaved: (String argp)
      {
        pwd = argp;
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
      validator: (String cp)
      {
        if(cp.length < 5)
        {
          return "Password should be more than 5 characters";
        }

        if(cp.compareTo(this.pwd) != 0)
          {
            return "Password Mismatch. Try Again";
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
          formKey.currentState.save();
          registerUser();  
        }
      },
      color: Colors.teal,
      child: Text("Register"),
    );
  }
}