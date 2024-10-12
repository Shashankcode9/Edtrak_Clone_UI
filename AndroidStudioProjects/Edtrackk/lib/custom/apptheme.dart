import 'package:flutter/material.dart';

class AppTheme{
AppTheme._();
static Color getColor(double percentage) {
  Color color = Colors.blueAccent;

  if (percentage >= 75.0) {
    color = Colors.green;
  } else if (percentage <= 50.0) {
    color = Colors.redAccent;
  } else if (percentage < 75.0 && percentage > 50.0) {
    color = Colors.orangeAccent;
  }
  return color;
}
}