
import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier{
  bool isAuto = false;
  bool isTone = false;
  bool isWake = false;

  double sliderValue = 0;

  Brightness brightness = Brightness.dark;

  void automatic(bool value)
  {
    isAuto = value;
    notifyListeners();
  }

  void trueTone(bool value)
  {
    isTone = value;
    notifyListeners();
  }

  void raiseToWake(bool value)
  {
    isWake = value;
    notifyListeners();
  }

  void rangeSliderChangeValue(double value)
  {
    sliderValue = value;
    notifyListeners();
  }

  void changeTheme(Brightness value)
  {
    brightness = value;
    notifyListeners();
  }
}