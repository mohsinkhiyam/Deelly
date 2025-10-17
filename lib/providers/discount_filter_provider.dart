import 'package:flutter/material.dart';

class DiscountFilterProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectDiscount(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
