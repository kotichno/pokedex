part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const FavouritesState._();

  const factory FavouritesState.loading({required List<int> ids}) = _Loading;

  const factory FavouritesState.favouritePokemons({
    required List<Pokemon> pokemons,
    required List<int> ids,
  }) = _FavouritePokemons;

  const factory FavouritesState.error({
    required Exception exception,
    required List<int> ids,
  }) = _Error;
}
