import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Color(0xFF0E0B42),
    systemNavigationBarColor: CustomColors.kSecondary);

class CustomColors {
  static const Color kPrimary = Color(0xff1F4F7D);
  static const Color kSecondary = Color(0xff0E0B42);
}
