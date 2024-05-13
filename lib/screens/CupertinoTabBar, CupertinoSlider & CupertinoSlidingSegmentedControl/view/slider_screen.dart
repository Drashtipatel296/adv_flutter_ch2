import 'package:adv_flutter_ch2/screens/CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/view/segment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/slider_provider.dart';
import 'components/image_screen.dart';

SliderProvider? providerTrue;
SliderProvider? providerFalse;

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {

    providerFalse = Provider.of<SliderProvider>(context, listen: false);
    providerTrue = Provider.of<SliderProvider>(context, listen: true);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: const Text('Display & Brightness'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(
            CupertinoIcons.chevron_right,
            color: CupertinoColors.systemGrey,
          ),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => const SegmentScreen(),
            ));
          },
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: const Text('APPEARANCE'),
                children: [
                  CupertinoListTile(title: imageAdd()),
                  CupertinoListTile(
                    title: const Text('Automatic'),
                    trailing: CupertinoSwitch(
                      value: providerTrue!.isAuto,
                      onChanged: (value) {
                        providerFalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: const Text('BRIGHTNESS'),
                footer: const Text(
                    'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.'),
                children: [
                  CupertinoListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(CupertinoIcons.sun_min,
                            color: CupertinoColors.systemGrey),
                        CupertinoSlider(
                          value: providerTrue!.sliderValue,
                          onChanged: (value) {
                            providerFalse!.rangeSliderChangeValue(value);
                          },
                        ),
                        const Icon(CupertinoIcons.sun_max_fill,
                            color: CupertinoColors.systemGrey)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: const Text('True Tone'),
                    trailing: CupertinoSwitch(
                      value: providerTrue!.isTone,
                      onChanged: (value) {
                        providerFalse!.trueTone(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: const [
                  CupertinoListTile(
                    title: Text('Night Shift'),
                    additionalInfo: Row(
                      children: [
                        Text('Sunset to Sunrise'),
                        Icon(CupertinoIcons.chevron_right,
                            color: CupertinoColors.systemGrey)
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  const CupertinoListTile(
                    title: Text('Auto-Lock'),
                    additionalInfo: Row(
                      children: [
                        Text('3 Minutes'),
                        Icon(
                          CupertinoIcons.chevron_right,
                          color: CupertinoColors.systemGrey,
                        )
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: const Text('Raise to Wake'),
                    trailing: CupertinoSwitch(
                      value: providerTrue!.isWake,
                      onChanged: (value) {
                        providerFalse!.raiseToWake(value);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
