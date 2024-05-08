import 'dart:io';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/adaptive_widgets/adaptive_widget.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/provider/platform_provider.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/android_screen/androidscreen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/iOsscreen.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/date_picker.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/dialog_screen.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/time_picker.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/iOS/action_sheet.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/iOS/date_picker.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/iOS/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RingtoneModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlatformProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String ans = Platform.operatingSystem;
    print(ans);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.blue.shade50,
        ),
      ),
      home: const AdaptiveScreen(),
    );
  }
}
