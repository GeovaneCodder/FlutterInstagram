import 'package:flutter/material.dart';

class AppModel with ChangeNotifier {
  bool _dark = false;

  bool getTheme() => _dark;

  setDark(bool sets) {
    _dark = sets;
    notifyListeners();
  }
}
