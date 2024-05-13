import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/provider/platform_provider.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/segment_provider.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/view/cupertino_button.dart';
import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/view/slider_screen.dart';
import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/provider/dialog_provider.dart';
import 'package:flutter/cupertino.dart';
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
      ],
      child: const MyApp(),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light().copyWith(
//         datePickerTheme: DatePickerThemeData(
//           backgroundColor: Colors.blue.shade50,
//         ),
//       ),
//       home: const AdaptiveScreen(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}
