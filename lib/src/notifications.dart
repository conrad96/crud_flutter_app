import "package:flutter/material.dart";

Widget customMessage(String status,String action)
{
  if(status=='Y' && action=='register')
  {
    return Text("User ${action}d Successfully",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightGreen),
    );
  }
  if(status=='Y' && action=='login')
  {
    return Text("User ${action}d Successfully",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightGreen),
    );
  }
  if(status=='N' && action=='login')
  {
    return Text("User ${action} Failed",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
    );
  }
  if(status=='N' && action=='register')
  {
    return Text("User ${action} Failed",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
    );
  }
  return Text("No Action Selected",
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),
  );
}
