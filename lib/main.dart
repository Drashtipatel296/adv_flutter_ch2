import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/dialog_screen.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/iOS/action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RingtoneModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.blue.shade50,
        ),
      ),
      home: const ActionSheetExample(),
    );
  }
}
