// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonResponse _$$_PokemonResponseFromJson(Map<String, dynamic> json) => _$_PokemonResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSpriteResponse.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonResponseToJson(_$_PokemonResponse instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
      'stats': instance.stats,
    };

_$_PokemonTypeResponse _$$_PokemonTypeResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonTypeResponse(
      slot: json['slot'] as int,
      type: PokemonTypeDataResponse.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonTypeResponseToJson(_$_PokemonTypeResponse instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$_PokemonTypeDataResponse _$$_PokemonTypeDataResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonTypeDataResponse(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PokemonTypeDataResponseToJson(_$_PokemonTypeDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_PokemonSpriteResponse _$$_PokemonSpriteResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonSpriteResponse(
      other: PokemonSpriteOtherResponse.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonSpriteResponseToJson(_$_PokemonSpriteResponse instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

_$_PokemonSpriteOtherResponse _$$_PokemonSpriteOtherResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonSpriteOtherResponse(
      officialArtwork: PokemonSpriteOfficialArtworkResponse.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonSpriteOtherResponseToJson(_$_PokemonSpriteOtherResponse instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

_$_PokemonSpriteOfficialArtworkResponse _$$_PokemonSpriteOfficialArtworkResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonSpriteOfficialArtworkResponse(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$_PokemonSpriteOfficialArtworkResponseToJson(
        _$_PokemonSpriteOfficialArtworkResponse instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$_PokemonStatsResponse _$$_PokemonStatsResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonStatsResponse(
      value: json['base_stat'] as int,
      stat: PokemonStatResponse.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonStatsResponseToJson(_$_PokemonStatsResponse instance) =>
    <String, dynamic>{
      'base_stat': instance.value,
      'stat': instance.stat,
    };

_$_PokemonStatResponse _$$_PokemonStatResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonStatResponse(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PokemonStatResponseToJson(_$_PokemonStatResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
