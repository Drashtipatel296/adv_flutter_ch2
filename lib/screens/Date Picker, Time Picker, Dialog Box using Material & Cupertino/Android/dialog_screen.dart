import 'package:adv_flutter_ch2/screens/Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Android/provider/dialog_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          'Dialog',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Phone ringtone',style: TextStyle(fontWeight: FontWeight.w500),),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Divider(),
                      RadioListTile(
                        title: Text('None'),
                        value: 'None',
                        groupValue: Provider.of<RingtoneModel>(context).selectedRingtone,
                        onChanged: (value) {
                          Provider.of<RingtoneModel>(context, listen: false).setSelectedRingtone(value.toString());
                        },
                      ),
                      RadioListTile(
                        title: Text('Callisto'),
                        value: 'Callisto',
                        groupValue: Provider.of<RingtoneModel>(context).selectedRingtone,
                        onChanged: (value) {
                          Provider.of<RingtoneModel>(context, listen: false).setSelectedRingtone(value.toString());
                        },
                      ),
                      RadioListTile(
                        title: Text('Ganymede'),
                        value: 'Ganymede',
                        groupValue: Provider.of<RingtoneModel>(context).selectedRingtone,
                        onChanged: (value) {
                          Provider.of<RingtoneModel>(context, listen: false).setSelectedRingtone(value.toString());
                        },
                      ),
                      RadioListTile(
                        title: Text('Luna'),
                        value: 'Luna',
                        groupValue: Provider.of<RingtoneModel>(context).selectedRingtone,
                        onChanged: (value) {
                          Provider.of<RingtoneModel>(context, listen: false).setSelectedRingtone(value.toString());
                        },
                      ),
                      Divider(),
                    ],

                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                );
              },
            );
          },
          icon: Icon(
            Icons.maps_ugc,
            size: 39,
          ),
        ),
      ),
    );
  }
}
