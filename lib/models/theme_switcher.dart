import 'package:flutter/material.dart';

class ThemeSwitcher extends ChangeNotifier {
  bool isLight;

  ThemeSwitcher({required this.isLight});


  void changeTheme({required bool newBool}) {
    isLight = newBool;
    notifyListeners();
  }
}
