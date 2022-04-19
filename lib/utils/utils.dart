import 'dart:io';

class Utils {
  static bool get isTestEnvironment => Platform.environment.containsKey('FLUTTER_TEST');
  
  Utils._();
}
