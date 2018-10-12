import 'package:flutter/material.dart';


void main() => runApp(new CrudApp());

class CrudApp extends StatelessWidget
{
  Widget build(context)
  {
    return MaterialApp(
      title: "Navigation",
      home: firstScreen(),
    );
  }
}
class firstScreen extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => secondScreen()));
            },
          child: Text("Next Screen"),
        )
      ),
    );
  }
}
class secondScreen extends StatelessWidget
{
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => firstScreen()));
        },
            child: Text("Previous Screen")),
      ),
    );
  }
}