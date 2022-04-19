// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../interactor/favourites/favourites_interactor.dart' as _i9;
import '../interactor/favourites/favourites_storage.dart' as _i7;
import '../interactor/network/network_manager.dart' as _i3;
import '../interactor/pokemon/pokemon_interactor.dart' as _i10;
import '../interactor/pokemon/pokemon_storage.dart' as _i4;
import '../interactor/pokemon/repository/pokemon_repository.dart' as _i8;
import 'di_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final diModule = _$DiModule();
  gh.singleton<_i3.NetworkManager>(_i3.NetworkManager());
  gh.singleton<_i4.PokemonStorage>(_i4.PokemonStorage());
  await gh.factoryAsync<_i5.SharedPreferences>(() => diModule.sharedPreferences, preResolve: true);
  gh.factory<_i6.Dio>(() => diModule.getDio(get<_i3.NetworkManager>()));
  gh.singleton<_i7.FavouritesStorage>(_i7.FavouritesStorage(get<_i5.SharedPreferences>()));
  gh.singleton<_i8.PokemonRepository>(_i8.PokemonRepository(get<_i6.Dio>()));
  gh.singleton<_i9.FavouritesInteractor>(_i9.FavouritesInteractor(
      get<_i7.FavouritesStorage>(), get<_i4.PokemonStorage>(), get<_i8.PokemonRepository>()));
  gh.singleton<_i10.PokemonInteractor>(
      _i10.PokemonInteractor(get<_i8.PokemonRepository>(), get<_i4.PokemonStorage>()));
  return get;
}

class _$DiModule extends _i11.DiModule {}
