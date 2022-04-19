import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/interactor/network/urls.dart';
import 'package:pokedex/interactor/pokemon/repository/data/pokemon_response/pokemon_response.dart';

@singleton
class PokemonRepository {
  final Dio _dio;

  PokemonRepository(this._dio);

  Future<Pokemon> loadPokemon(int pokemonId) async {
    final response = await _dio.get<Map<String, Object?>>(
      Urls.pokemon(pokemonId),
    );

    return PokemonResponse.fromJson(response.data!).transform();
  }
}
