import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/interactor/pokemon/pokemon_interactor.dart';
import 'package:pokedex/utils/const.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  final PokemonInteractor _pokemonInteractor;

  PokedexBloc({
    required PokemonInteractor pokemonInteractor,
  })  : _pokemonInteractor = pokemonInteractor,
        super(const PokedexState.loading()) {
    on<PokedexEvent>((event, emitter) async {
      await event.when(
        loadPokedex: (page) => _loadPokemons(page, emitter),
      );
    });
  }

  Future<void> _loadPokemons(int page, Emitter<PokedexState> emitter) async {
    if (page == Const.initialPage) emitter(const PokedexState.loading());

    try {
      final pokemons = await _pokemonInteractor.loadPokemons(page: page);
      emitter(PokedexState.pokemons(pokemons: pokemons));
    } on Exception catch (e) {
      if (page == Const.initialPage) {
        emitter(PokedexState.error(exception: e));
      } else {
        emitter(PokedexState.pageError(exception: e));
      }
    }
  }
}
