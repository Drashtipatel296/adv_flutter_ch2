import 'package:flutter/material.dart';

class RingtoneModel extends ChangeNotifier {
  String _selectedRingtone = '';

  String get selectedRingtone => _selectedRingtone;

  void setSelectedRingtone(String ringtone) {
    _selectedRingtone = ringtone;
    notifyListeners();
  }
}
