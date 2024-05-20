import 'package:flutter/material.dart';

import '../../../utils/colorlist.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: Colors.black,
            expandedHeight: 150,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/img/bg1.webp',
                fit: BoxFit.cover,
              ),
              title: Text('Sliver AppBar',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => colorContinar(colorList[index]['color']),
          //     childCount: colorList.length,
          //   ),
          // ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                    (context, index) => colorContinar(
                  colorList[index]['color'],
                ),
                childCount: colorList.length
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
  Container colorContinar(Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 200,
      decoration: BoxDecoration(color: color),
    );
  }
}
