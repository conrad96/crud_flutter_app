import 'package:flutter/material.dart';
import "src/layout.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:async";

void main() => runApp(new CrudApp());
class Users{
   String uname_db;
   String pwd_db;
   Users({this.uname_db,this.pwd_db});

   factory Users.fromJson(Map<String, dynamic> json)
   {
     return Users(
       uname_db: json['uname'],
       pwd_db: json['pwd']
     );
   }
}
class CrudApp extends StatelessWidget
{
  final String ip = "192.168.1.118";

  // Future<Users> getUsers() async
  // { 
  //   final request = await http.get("http://$ip/crud_flutter/get_users.php");
  //   return json.decode(request.body);
  // }
  Future<Users> getUsers() async{
    final response =
      await http.get("http://$ip/crud_flutter/get_users.php");

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Users.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
    }
  }
 
  Widget build(context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CRUD")
        ),
         body: Center(
           child:  Column(
             children: <Widget>[
               Layout(),
               FutureBuilder<RegUser>(
                 builder: (context,snapshot){
                   
                 },
               )
             ]
           )
         )
      ),
    );
  }
}