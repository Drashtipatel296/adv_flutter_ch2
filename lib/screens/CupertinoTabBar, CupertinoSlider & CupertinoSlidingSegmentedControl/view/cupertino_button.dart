import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/model/list.dart';
import 'package:flutter/cupertino.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Kindacode.com'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
            ),
          ],
        ), tabBuilder: (context, index) {
          return Center(child: Text(screens[index],style: const TextStyle(fontSize: 25),),);
        },
      ),
    );
  }
}
