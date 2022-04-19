import 'package:pokedex/di/di.dart';

Future<void> configureTestDependencies() async {
  await getIt.reset();
}
