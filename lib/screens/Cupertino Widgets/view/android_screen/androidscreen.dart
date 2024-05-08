import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/provider/platform_provider.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/android_screen/button_screen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/android_screen/indicator_screen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/android_screen/listtile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidScreen extends StatelessWidget {
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey,
        title: Text(
          'Android Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        centerTitle: true,
        actions: [
          Switch(
            value:
                Provider.of<PlatformProvider>(context, listen: true).isAndroid,
            onChanged: (value) {
              Provider.of<PlatformProvider>(context, listen: false)
                  .platform(value);
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          indicator(),
          listTileAndroid(),
          materialButton(context),
        ],
      ),
    );
  }
}
