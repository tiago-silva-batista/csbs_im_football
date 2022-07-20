import 'package:csbs_im_football/theme/ui_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiTheme {
  static ThemeData theme1 = ThemeData(
    fontFamily: 'roboto',
  );
}

class PreferenciaTema {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);

  static setTema() {
    tema.value = WidgetsBinding.instance!.platformDispatcher.platformBrightness;
    changeStatusNavigationBar();
  }

  static changeStatusNavigationBar() {
    bool isDark = tema.value == Brightness.dark;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
        statusBarColor: isDark ? UiColor.secondDark : UiColor.secondLight,
        systemNavigationBarIconBrightness:
            isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor:
            isDark ? UiColor.thirtyDark : UiColor.thirtyLight,
      ),
    );
  }
}
