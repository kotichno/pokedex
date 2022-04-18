// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../interactor/network/network_manager.dart' as _i3;
import '../interactor/pokemon/pokemon_interactor.dart' as _i6;
import '../interactor/pokemon/repository/pokemon_repository.dart' as _i5;
import 'di_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final diModule = _$DiModule();
  gh.factory<_i3.NetworkManager>(() => _i3.NetworkManager());
  gh.factory<_i4.Dio>(() => diModule.getDio(get<_i3.NetworkManager>()));
  gh.factory<_i5.PokemonRepository>(() => _i5.PokemonRepository(get<_i4.Dio>()));
  gh.factory<_i6.PokemonInteractor>(() => _i6.PokemonInteractor(get<_i5.PokemonRepository>()));
  return get;
}

class _$DiModule extends _i7.DiModule {}
