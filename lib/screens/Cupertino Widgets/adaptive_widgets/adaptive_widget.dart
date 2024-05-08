import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/android_screen/androidscreen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/iOsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/platform_provider.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(Provider.of<PlatformProvider>(context, listen: true).isAndroid){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AndroidScreen(),
      );
    }
    else{
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: IosScreen(),
      );
    }
  }
}
