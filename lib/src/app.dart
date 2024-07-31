import 'package:flutter/material.dart';
import 'package:http_requests/src/core/constants/settings.dart';
import 'package:http_requests/src/core/constants/theme.dart';
import 'package:http_requests/src/routing/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      routerConfig: router,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
