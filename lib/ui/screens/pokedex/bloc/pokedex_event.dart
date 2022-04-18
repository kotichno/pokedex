part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.loadPokedex({required int page}) = _LoadPokedex;
}
