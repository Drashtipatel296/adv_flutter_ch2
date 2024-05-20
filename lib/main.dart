import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/provider/platform_provider.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/segment_provider.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/iOS/date_picker.dart';
import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/provider/bottom_provider.dart';
import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/view/bottom_navigationbar.dart';
import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/view/home_screen.dart';
import 'package:adv_flutter_ch2/screens/Sliver%20Widgets/screens/slivar_screen.dart';
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
        ),
        ChangeNotifierProvider(
          create: (context) => SegmentProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
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
      home: const DatePickerScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: TabScreen(),
//     );
//   }
// }
