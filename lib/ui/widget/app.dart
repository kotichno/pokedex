import 'package:flutter/material.dart';
import 'package:template/ui/navigation/app_router.dart';
import 'package:template/ui/theme/theme.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
