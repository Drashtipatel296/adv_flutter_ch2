import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/segment_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../model/list.dart';

class SegmentScreen extends StatelessWidget {
  const SegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            middle: const Text('Title'),
            largeTitle: Center(
              child: CupertinoSlidingSegmentedControl(
                groupValue:
                    Provider.of<SegmentProvider>(context, listen: true)
                        .index
                        .toString(),
                thumbColor: CupertinoColors.systemGrey2,
                children: const {
                  '0': Text(
                    'First',
                    style: TextStyle(fontSize: 20),
                  ),
                  '1': Text(
                    'Second',
                    style: TextStyle(fontSize: 20),
                  ),
                  '2': Text(
                    'Third',
                    style: TextStyle(fontSize: 20),
                  ),
                },
                onValueChanged: (value) {
                  Provider.of<SegmentProvider>(context, listen: false)
                      .changeIndex(value!);
                },
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                slide[Provider.of<SegmentProvider>(context).index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
