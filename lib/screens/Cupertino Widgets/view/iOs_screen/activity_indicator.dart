import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding activityIndiacator() {
  return const Padding(
    padding:
    EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Cupertino Activity Indicator',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 50,),
        CupertinoActivityIndicator(
          color: Colors.blue,
          radius: 50,
        ),
      ],
    ),
  );
}