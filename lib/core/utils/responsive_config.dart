import 'package:flutter/widgets.dart';

//Current Responsive Confgurations only valid for Mobile Devices

class ResponsiveConfig {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _scaleWidth;
  static late double _scaleHeight;
  static late double _scaleText;

  static const double _designWidth = 375;  
  static const double _designHeight = 812; 

  static void init(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _screenWidth = size.width;
    _screenHeight = size.height;

    _scaleWidth = _screenWidth / _designWidth;
    _scaleHeight = _screenHeight / _designHeight;

    // Optional: Text scale factor can use min of width/height scale
    _scaleText = _scaleWidth < _scaleHeight ? _scaleWidth : _scaleHeight;
  }

  static double scaleWidth(double width) => width * _scaleWidth;
  static double scaleHeight(double height) => height * _scaleHeight;
  static double scaleText(double fontSize) => fontSize * _scaleText;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  
}

extension ResponsiveExtensions on num {
  double get w => ResponsiveConfig.scaleWidth(toDouble());
  double get h => ResponsiveConfig.scaleHeight(toDouble());
  double get sp => ResponsiveConfig.scaleText(toDouble());
}

double get screenWidth => ResponsiveConfig.screenWidth;
double get screenHeight=> ResponsiveConfig.screenHeight;

