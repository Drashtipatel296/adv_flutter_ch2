import 'package:flutter/cupertino.dart';

Padding datePicker() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Text(
          'Cupertino Date Picker : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            child: CupertinoDatePicker(
              onDateTimeChanged: (value) {},
            ),
          ),
        )
      ],
    ),
  );
}