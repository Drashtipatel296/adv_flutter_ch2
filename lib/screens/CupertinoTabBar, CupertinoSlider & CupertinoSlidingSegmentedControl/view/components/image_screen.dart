import 'package:flutter/cupertino.dart';
import '../slider_screen.dart';

Padding imageAdd() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/img/light.webp'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Light'),
            const SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value:Brightness.light,
              groupValue: providerTrue!.brightness,
              onChanged: (value) {
                providerFalse!.changeTheme(value ?? Brightness.light);
              },
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/img/dark.webp'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Dark'),
            const SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value: Brightness.dark,
              groupValue: providerTrue!.brightness,
              onChanged: (value) {
                providerFalse!.changeTheme(value ?? Brightness.dark);
              },
            )
          ],
        ),
      ],
    ),
  );
}