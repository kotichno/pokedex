import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/interactor/favourites/favourites_interactor.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final FavouritesInteractor _interactor;

  FavouritesBloc(
    FavouritesInteractor interactor,
  )   : _interactor = interactor,
        super(FavouritesState.loading(ids: interactor.getFavouritesIds())) {
    on<FavouritesEvent>((event, emitter) async {
      await event.when(
        addFavourite: (pokemon) => _addFavourite(emitter, pokemon),
        removeFavourite: (pokemon) => _removeFavourite(emitter, pokemon),
        getFavouritePokemons: () => _getFavouritesPokemons(emitter),
      );
    });
  }

  Future<void> _addFavourite(Emitter<FavouritesState> emitter, Pokemon pokemon) async {
    await _interactor.addFavourites(pokemon.id);

    await _emitState(emitter);
  }

  Future<void> _removeFavourite(Emitter<FavouritesState> emitter, Pokemon pokemon) async {
    await _interactor.removeFavourites(pokemon.id);
    await _emitState(emitter);
  }

  Future<void> _getFavouritesPokemons(Emitter<FavouritesState> emitter) async {
    emitter(FavouritesState.loading(ids: _interactor.getFavouritesIds()));
    try {
      final pokemons = await _interactor.getFavourites();
      emitter(FavouritesState.favouritePokemons(
        pokemons: pokemons,
        ids: state.ids,
      ));
    } on Exception catch (e) {
      emitter(FavouritesState.error(
        exception: e,
        ids: state.ids,
      ));
    }
  }

  Future<void> _emitState(Emitter<FavouritesState> emitter) async {
    final FavouritesState newState;
    if (state is _FavouritePokemons) {
      final favState = state as _FavouritePokemons;
      newState = favState.copyWith(
        pokemons: await _interactor.getFavourites(),
        ids: _interactor.getFavouritesIds(),
      );
    } else {
      newState = state.copyWith(ids: _interactor.getFavouritesIds());
    }

    emitter(newState);
  }
}
