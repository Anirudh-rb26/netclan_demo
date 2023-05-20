import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class CustomColors {
  Color mainTheme = HexColor("#0E2E43");
  Color backgroundColor = HexColor("#FFFFFF");
  Color subtitleColor = HexColor("#728B9A");
  Color highlightColor = HexColor("#FDCD74");
}
