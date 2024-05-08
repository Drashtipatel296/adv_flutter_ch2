import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/provider/platform_provider.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/activity_indicator.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/alert_dialog_screen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/date_picker.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/listtile_screen.dart';
import 'package:adv_flutter_ch2/screens/Cupertino%20Widgets/view/iOs_screen/timr_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class IosScreen extends StatelessWidget {
  const IosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iOS Screen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatformProvider>(context, listen: true).isAndroid,
            onChanged: (value) {
            Provider.of<PlatformProvider>(context,listen: false).platform(value);
            },),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            activityIndiacator(),
            button(context),
            datePicker(),
            listTile(),
            timePicker(),
          ],
        ),
      ),
    );
  }
}
