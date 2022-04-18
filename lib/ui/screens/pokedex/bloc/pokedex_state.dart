part of 'pokedex_bloc.dart';

@freezed
class PokedexState with _$PokedexState {
  bool get isInitial => this is _Initial;

  const PokedexState._();

  const factory PokedexState.loading() = _Loading;

  const factory PokedexState.initial({
    required List<Pokemon> pokemons,
  }) = _Initial;

  const factory PokedexState.pageError({
    required Exception exception,
  }) = _PageError;

  const factory PokedexState.error({required Exception exception}) = _Error;
}
