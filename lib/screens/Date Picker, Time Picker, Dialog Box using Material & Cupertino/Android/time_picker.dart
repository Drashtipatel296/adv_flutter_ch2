import 'package:flutter/material.dart';

class TimePickerScreen extends StatelessWidget {
  const TimePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          'Time Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          onPressed: () async {
            TimeOfDay time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ) ?? TimeOfDay.now();
          },
          icon: const Icon(
            Icons.watch_later,
            size: 50,
          ),
        ),
      ),
    );
  }
}
