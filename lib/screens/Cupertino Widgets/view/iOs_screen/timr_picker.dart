import 'package:flutter/cupertino.dart';

Padding timePicker() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: [
        Text(
          'Cupertino Time Picker : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            child: CupertinoTimerPicker(
              onTimerDurationChanged: (value) {},
            ),
          ),
        )
      ],
    ),
  );
}