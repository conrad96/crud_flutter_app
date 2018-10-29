import 'package:flutter/material.dart';
import "package:http/http.dart" as http;


class HomePage extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(

      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Container(
          height: 300.0,
          color: Colors.transparent,
          child: new Container(
            margin: EdgeInsets.only(top: 50.0,left: 15.0,right:15.0),
              decoration: new BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                      )),
              child: new Center(
                child: formLayout(),
              )),
        ),
      );
  }
  Widget formLayout()
  {
    final postKey = GlobalKey<FormState>();
    String post = "";
    var url = "http://192.168.1.118/portal/posts.php";

    final textarea = TextFormField(
      maxLines: 5,
      style: TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        labelText: "Type Something Here..."
      ),
      onSaved: (String str){
        post = str;
      },
    );
   final sendBtn = RaisedButton.icon(
     onPressed: (){
       postKey.currentState.save();
       http.post(url,body: {"post": post,"email": "conrad.mugisha@gmail.com" } ).then((response){
         print("Status: ${response.statusCode} \n Body: ${response.body}");
       });
     },
     icon: Icon(Icons.send),
     label: Text("Post"),
   );
    return Form(
      key: postKey,
      child: Column(
        children: <Widget>[
          textarea,
          sendBtn
        ]
      ),
    );
  }
}