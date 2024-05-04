import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          'Date Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 400,
          child: CupertinoDatePicker(onDateTimeChanged: (DateTime value) {},
            mode: CupertinoDatePickerMode.dateAndTime,
          ),
        ),
      ),
    );
  }
}
