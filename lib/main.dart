import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/di/di.dart';
import 'package:pokedex/ui/widget/app.dart';
import 'package:worker_manager/worker_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Executor().warmUp();
  configureDependencies();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const App());
}
