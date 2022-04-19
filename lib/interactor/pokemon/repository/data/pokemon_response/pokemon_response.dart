import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/utils/transformable.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse implements Transformable<Pokemon> {
  factory PokemonResponse({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeResponse> types,
    required PokemonSpriteResponse sprites,
    required List<PokemonStatsResponse> stats,
  }) = _PokemonResponse;

  PokemonResponse._();

  factory PokemonResponse.fromJson(Map<String, Object?> json) => _$PokemonResponseFromJson(json);

  @override
  Pokemon transform() => Pokemon(
        id: id,
        name: name,
        types: types.map((e) => e.type.name).toList(),
        img: sprites.other.officialArtwork.frontDefault,
        height: height,
        weight: weight,
        stats: stats.asMap().map((key, value) => MapEntry(value.stat.name, value.value)),
      );
}

@freezed
class PokemonTypeResponse with _$PokemonTypeResponse {
  factory PokemonTypeResponse({
    required int slot,
    required PokemonTypeDataResponse type,
  }) = _PokemonTypeResponse;

  factory PokemonTypeResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeResponseFromJson(json);
}

@freezed
class PokemonTypeDataResponse with _$PokemonTypeDataResponse {
  factory PokemonTypeDataResponse({
    required String name,
  }) = _PokemonTypeDataResponse;

  factory PokemonTypeDataResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeDataResponseFromJson(json);
}

@freezed
class PokemonSpriteResponse with _$PokemonSpriteResponse {
  factory PokemonSpriteResponse({
    required PokemonSpriteOtherResponse other,
  }) = _PokemonSpriteResponse;

  factory PokemonSpriteResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonSpriteResponseFromJson(json);
}

@freezed
class PokemonSpriteOtherResponse with _$PokemonSpriteOtherResponse {
  factory PokemonSpriteOtherResponse({
    @JsonKey(name: 'official-artwork')
        required PokemonSpriteOfficialArtworkResponse officialArtwork,
  }) = _PokemonSpriteOtherResponse;

  factory PokemonSpriteOtherResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonSpriteOtherResponseFromJson(json);
}

@freezed
class PokemonSpriteOfficialArtworkResponse with _$PokemonSpriteOfficialArtworkResponse {
  factory PokemonSpriteOfficialArtworkResponse({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _PokemonSpriteOfficialArtworkResponse;

  factory PokemonSpriteOfficialArtworkResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonSpriteOfficialArtworkResponseFromJson(json);
}

@freezed
class PokemonStatsResponse with _$PokemonStatsResponse {
  factory PokemonStatsResponse({
    @JsonKey(name: 'base_stat') required int value,
    required PokemonStatResponse stat,
  }) = _PokemonStatsResponse;

  factory PokemonStatsResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonStatsResponseFromJson(json);
}

@freezed
class PokemonStatResponse with _$PokemonStatResponse {
  factory PokemonStatResponse({
    required String name,
  }) = _PokemonStatResponse;

  factory PokemonStatResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonStatResponseFromJson(json);
}
