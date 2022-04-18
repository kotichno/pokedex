import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/interactor/network/network_manager.dart';

@module
abstract class DiModule {
  Dio getDio(NetworkManager networkManager) => networkManager.createDio();
}
