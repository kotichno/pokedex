import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/interactor/favourites/favourites_storage.dart';
import 'package:pokedex/interactor/pokemon/pokemon_storage.dart';
import 'package:pokedex/interactor/pokemon/repository/pokemon_repository.dart';

@singleton
class FavouritesInteractor {
  final FavouritesStorage _favouritesStorage;
  final PokemonStorage _pokemonStorage;
  final PokemonRepository _pokemonRepository;

  FavouritesInteractor(
    this._favouritesStorage,
    this._pokemonStorage,
    this._pokemonRepository,
  );

  Future<List<Pokemon>> getFavourites() {
    final favouriteIds = _favouritesStorage.getFavourites();

    final requests = favouriteIds.map((id) {
      if (_pokemonStorage.contains(id)) {
        return Future.value(_pokemonStorage.getPokemon(id));
      } else {
        return _pokemonRepository.loadPokemon(id).then((value) {
          _pokemonStorage.addPokemon(value);
          return Future.value(value);
        });
      }
    });

    return Future.wait<Pokemon>(requests);
  }

  Future<void> addFavourites(int id) => _favouritesStorage.addFavourites(id);

  Future<void> removeFavourites(int id) => _favouritesStorage.removeFavourites(id);

  List<int> getFavouritesIds() => _favouritesStorage.getFavourites();
}
