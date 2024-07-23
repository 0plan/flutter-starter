import 'package:flutter/material.dart';
import 'package:flutter_zustand/flutter_zustand.dart';

class ThemeStore extends Store<ThemeMode> {
  ThemeStore() : super(ThemeMode.system);

  void setLightTheme() {
    set(ThemeMode.light);
  }

  void setDarkTheme() {
    set(ThemeMode.dark);
  }

  void setSystemTheme() {
    set(ThemeMode.system);
  }

}

ThemeStore useThemeStore() => create(() => ThemeStore());
