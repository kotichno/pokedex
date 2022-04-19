part of 'pokedex_bloc.dart';

@freezed
class PokedexState with _$PokedexState {
  bool get isPokemons => this is _Pokemons;

  const PokedexState._();

  const factory PokedexState.loading() = _Loading;

  const factory PokedexState.pokemons({
    required List<Pokemon> pokemons,
  }) = _Pokemons;

  const factory PokedexState.pageError({
    required Exception exception,
  }) = _PageError;

  const factory PokedexState.error({required Exception exception}) = _Error;
}
