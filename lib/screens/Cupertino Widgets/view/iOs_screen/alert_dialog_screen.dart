import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding button(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: [
        Text(
          'Cupertino Button : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoButton(
            color: Colors.blue,
            child: Text('Cupertion Alert Dialong'),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Text("Welcome to iOS platform"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Next')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close')),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoButton(
            color: Colors.blue,
            child: Text('Cupertion Action Sheet'),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: Text("Welcome to iOS platform"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Next')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close')),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}