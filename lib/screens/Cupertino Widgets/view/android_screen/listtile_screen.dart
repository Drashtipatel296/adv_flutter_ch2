import 'package:flutter/material.dart';

Padding listTileAndroid() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: [
        Text(
          'Material List Tile : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Android platform')),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.add),
              title: Text('Android')),
        ),
      ],
    ),
  );
}