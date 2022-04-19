import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/interactor/network/network_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DiModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  Dio getDio(NetworkManager networkManager) => networkManager.createDio();
}
