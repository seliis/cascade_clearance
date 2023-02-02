import "package:flutter/material.dart";

class Responsive {
  static final _instance = Responsive._singleInstance();
  factory Responsive() => _instance;
  Responsive._singleInstance();

  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static bool isMobile(double width) {
    if (width < 960) {
      return true;
    }
    return false;
  }
}
