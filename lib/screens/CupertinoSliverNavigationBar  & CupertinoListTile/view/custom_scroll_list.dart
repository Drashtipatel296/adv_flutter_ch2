import 'package:flutter/cupertino.dart';

class CustomScrollScreen extends StatelessWidget {
  const CustomScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('My Cart'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CupertinoListTile(
                  title: Text('Person ${index + 1}'),
                  subtitle: Text('${index + 1}'),
                );
              },
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
