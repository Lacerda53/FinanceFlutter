import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF4852A0);
const secundaryColor = const Color(0xFF3C3C3C);
const bgColor = const Color(0xFFF3F8FE);
const accentColor = const Color(0xFFFFFFFF);

ThemeData mobileTheme() {
  return ThemeData(
    brightness: brightness,
    backgroundColor: bgColor,
  );
}
