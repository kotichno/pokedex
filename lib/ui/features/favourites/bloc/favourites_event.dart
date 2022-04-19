part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.getFavouritePokemons() = _GetFavouritePokemons;
  const factory FavouritesEvent.addFavourite(Pokemon pokemon) = _AddFavourite;
  const factory FavouritesEvent.removeFavourite(Pokemon pokemon) = _RemoveFavourite;
}
