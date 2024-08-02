import 'package:flutter/material.dart';
import 'package:http_requests/src/core/constants/settings.dart';

final appLightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: appSeedColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
);

final appDarkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: appSeedColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);
