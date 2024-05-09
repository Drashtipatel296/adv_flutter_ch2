import 'package:flutter/cupertino.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings',style: TextStyle(fontSize: 20),),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoListSection(
                  children: [
                    CupertinoListTile.notched(
                      title: const Text('General',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/settings.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Display & Brightness',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/display.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Wallpaper',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/wall.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Sounds',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/sound.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Touch ID & Passcode',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/pass.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Privacy',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/privacy.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: [
                    CupertinoListTile.notched(
                      title: const Text('iCloud',style: TextStyle(fontSize: 21),),
                      subtitle: const Text('xyz@9to5mac.com'),
                      leading: Image.asset('assets/img/cloud.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('iTunes & App Store',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/display.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Passbook & Apple Pay',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/apple.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: [
                    CupertinoListTile.notched(
                      title: const Text('Mail, Contacts, Calender',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/mail.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Notes',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/notes.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Reminders',style: TextStyle(fontSize: 21),),
                      leading: Image.asset('assets/img/reminder.png'),
                      trailing: const Icon(CupertinoIcons.forward),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
