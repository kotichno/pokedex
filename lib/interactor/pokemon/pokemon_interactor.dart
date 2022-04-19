import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/interactor/pokemon/pokemon_storage.dart';
import 'package:pokedex/interactor/pokemon/repository/pokemon_repository.dart';
import 'package:pokedex/utils/const.dart';

@singleton
class PokemonInteractor {
  final PokemonRepository _repository;
  final PokemonStorage _storage;

  PokemonInteractor(this._repository, this._storage);

  Future<List<Pokemon>> loadPokemons({required int page}) async {
    final requests = List.generate(
      Const.pageSize,
      (i) {
        final id = page * Const.pageSize + i + 1;
        if (_storage.contains(id)) {
          return Future.value(_storage.getPokemon(id));
        } else {
          return _repository.loadPokemon(page * Const.pageSize + i + 1);
        }
      },
    );

    final pokemons = await Future.wait(requests);
    _storage.addAllPokemon(pokemons);
    return pokemons;
  }
}
