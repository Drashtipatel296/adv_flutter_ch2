import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/view/intro_screen1.dart';
import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/view/intro_screen2.dart';
import 'package:adv_flutter_ch2/screens/Page%20View%20&%20BottomNavigationBar/view/intro_screen3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          IntroScreen1(),
          IntroScreen2(),
          IntroScreen3(),
        ],
      ),
    );
  }
}
