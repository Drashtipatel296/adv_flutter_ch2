import 'package:flutter/cupertino.dart';

Padding listTile() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: [
        Text(
          'Cupertino List Tile : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoListTile(
              padding: EdgeInsets.zero,
              leading: Icon(CupertinoIcons.person),
              trailing: Icon(CupertinoIcons.add),
              title: Text('iOS platform')),
        )
      ],
    ),
  );
}