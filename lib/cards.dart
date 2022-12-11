import 'package:flutter/material.dart';

Widget HorzCard(Widget text){
  return Card(
    color: Colors.red.shade100,
    shadowColor: Colors.redAccent.withOpacity(0.5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 2.0,
    child: Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: text,
    )
    )
  );
}