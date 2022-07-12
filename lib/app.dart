import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adaptive_theme_yt/constants/app_theme.dart';
import 'package:adaptive_theme_yt/screens/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.themeMode}) : super(key: key);
  var themeMode;

  @override
  Widget build(BuildContext context) {
    // App Theme
    final appTheme = AppTheme();

    return AdaptiveTheme(

      // Light Mode
      light: appTheme.lightTheme,

      // Dark Mode
      dark: appTheme.darkTheme,

      // initial
      initial: themeMode ?? AdaptiveThemeMode.system,

      // Builder
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Material App',
        theme: theme,
        darkTheme: darkTheme,
        home: HomeView(),
      ),
    );
  }
}
