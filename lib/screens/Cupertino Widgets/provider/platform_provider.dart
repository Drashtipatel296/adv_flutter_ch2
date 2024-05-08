import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier{
  bool isAndroid = true;

  void platform(bool value){
    isAndroid = value;
    notifyListeners();
  }
}