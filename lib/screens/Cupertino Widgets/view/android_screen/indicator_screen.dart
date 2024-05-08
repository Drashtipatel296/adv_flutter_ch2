import 'package:flutter/material.dart';

Padding indicator() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Material Indicator : -',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        CircularProgressIndicator(
          color: Colors.blue,
        )
      ],
    ),
  );
}