import 'package:csbs_im_football/theme/ui_color.dart';
import 'package:csbs_im_football/theme/ui_shadow.dart';
import 'package:flutter/material.dart';

class UiTextStyle {
  static TextStyle text1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: UiColor.secondLight,
    shadows: [UiShadow.textShadow],
  );

  static TextStyle text2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: UiColor.secondLight,
    shadows: [UiShadow.textShadow],
  );
}
