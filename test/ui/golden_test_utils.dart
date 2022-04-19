import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/theme/theme.dart';

const goldenTestDevices = [
  // Ios
  Device(name: 'iPhone 12 Pro Max', size: Size(428, 926)),
  Device(name: 'iPhone 12', size: Size(390, 844)),
  Device(name: 'iPhone 12 mini', size: Size(375, 812)),
  Device(name: 'iPhone 11', size: Size(414, 896)),
  Device(name: 'iPhone 8', size: Size(375, 667)),
  Device(name: 'iPhone SE', size: Size(320, 568)),
  // Android
  Device(name: 'Samsung S7', size: Size(360, 640)),
  Device(name: 'Sony Xperia L4', size: Size(360, 840)),
  Device(name: 'Samsung S20+', size: Size(384, 854)),
  Device(name: 'Xiaomi Redmi Note 8', size: Size(393, 851)),
  Device(name: 'Samsung S10 Lite', size: Size(412, 914)),
  Device(name: 'Sony Xperia Z Ultra', size: Size(540, 960)),
];

class TestApp extends StatelessWidget {
  final Widget child;
  const TestApp({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: child,
    );
  }
}

Future<void> goldenTest(
  WidgetTester tester, {
  required Widget widget,
  required String fileName,
}) async {
  await tester.pumpWidgetBuilder(
    TestApp(child: widget),
    surfaceSize: const Size(375, 862),
  );
  await multiScreenGolden(
    tester,
    fileName,
  );
}
