import 'package:flutter/cupertino.dart';

class ListSectionScreen extends StatelessWidget {
  const ListSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xffF2F2F7),
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Lists Enhanced'),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoListSection.insetGrouped(
                  header: const Text(
                    'SINGLE SELECTION',
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  footer: const Text(
                    'Choose a single item from a list of options.',
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    CupertinoListTile.notched(
                      title: Text('Off'),
                      trailing: Icon(CupertinoIcons.check_mark),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Wi-Fi'),
                    ),
                    CupertinoListTile.notched(
                      title: Text(
                        'Mobile Data',
                        style: TextStyle(color: CupertinoColors.systemGrey2),
                      ),
                    ),
                  ],
                ),
                CupertinoListSection.insetGrouped(
                  header: const Text(
                    'MULTI SELECTION',
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  footer: const Text(
                    'Choose multiple items from l list of options.',
                    style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  children: [
                    const CupertinoListTile.notched(
                      title: Text('Option one',style: TextStyle(color: CupertinoColors.systemGrey2),),
                      subtitle: Text('Disabled and selected',style: TextStyle(color: CupertinoColors.systemGrey2),),
                      leading: Icon(CupertinoIcons.check_mark),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Option two'),
                      subtitle: const Text('with subtitle!',style: TextStyle(color: CupertinoColors.systemGrey2),),
                      leading: Container(),
                    ),
                    const CupertinoListTile.notched(
                      title: Text('Option three'),
                      leading: Icon(CupertinoIcons.check_mark),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Option four'),
                      leading: Container(),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Option five',style: TextStyle(color: CupertinoColors.systemGrey2),),
                      subtitle: const Text('Disabled and not selected',style: TextStyle(color: CupertinoColors.systemGrey2),),
                      leading: Container(),
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
