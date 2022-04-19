import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';

@singleton
class PokemonStorage {
  final _map = <int, Pokemon>{};

  bool contains(int id) => _map.containsKey(id);

  void addPokemon(Pokemon pokemon) => _map[pokemon.id] = pokemon;

  void addAllPokemon(List<Pokemon> pokemons) {
    _map.addEntries(pokemons.map((p) => MapEntry(p.id, p)));
  }

  Pokemon getPokemon(int id) => _map[id]!;
}
