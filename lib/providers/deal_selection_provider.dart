import 'package:flutter/material.dart';

class DealSelectionProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectDeal(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
