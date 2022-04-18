import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/interactor/pokemon/repository/pokemon_repository.dart';
import 'package:pokedex/utils/const.dart';

@injectable
class PokemonInteractor {
  final PokemonRepository _repository;

  PokemonInteractor(this._repository);

  Future<List<Pokemon>> loadPokemons({required int page}) {
    final requests = List.generate(
      Const.pageSize,
      (i) => _repository.loadPokemon(page * Const.pageSize + i + 1),
    );

    return Future.wait(requests);
  }
}
