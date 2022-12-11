import 'package:flutter/material.dart';

Widget HorzCard(String text){
  return Card(
    color: Colors.red.shade100,
    shadowColor: Colors.redAccent.withOpacity(70.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 2.0,
    child: Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: "Roboto", fontStyle: FontStyle.normal),
    ),
    )
    )
  );
}