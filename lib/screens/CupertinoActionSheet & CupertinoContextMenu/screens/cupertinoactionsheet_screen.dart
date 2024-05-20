import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheet'),
      ),
      child: Center(
        child: CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoActionSheet(
                    title: const Text(
                      textAlign: TextAlign.start,
                      'Title',
                      style: TextStyle(fontSize: 16),
                    ),
                    message: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        textAlign: TextAlign.start,
                        'Message',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    actions: <Widget>[
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Default Action',
                          style: TextStyle(color: Colors.blue, fontSize: 23,fontWeight: FontWeight.bold),
                        ),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Normal Action',
                          style: TextStyle(color: Colors.blue, fontSize: 23),
                        ),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Destruative Action',
                          style: TextStyle(color: Colors.red, fontSize: 23,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      isDefaultAction: true,
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 23,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black, width: 2)),
              child: Text('Show CupertinoActionSheet',style: TextStyle(color: Colors.black),),
            )),
      ),
    );
  }
}