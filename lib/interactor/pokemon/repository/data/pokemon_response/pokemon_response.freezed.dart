// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
class _$PokemonResponseTearOff {
  const _$PokemonResponseTearOff();

  _PokemonResponse call(
      {required int id,
      required String name,
      required int height,
      required int weight,
      required List<PokemonTypeResponse> types,
      required PokemonSpriteResponse sprites,
      required List<PokemonStatsResponse> stats}) {
    return _PokemonResponse(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types,
      sprites: sprites,
      stats: stats,
    );
  }

  PokemonResponse fromJson(Map<String, Object?> json) {
    return PokemonResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonResponse = _$PokemonResponseTearOff();

/// @nodoc
mixin _$PokemonResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypeResponse> get types => throw _privateConstructorUsedError;
  PokemonSpriteResponse get sprites => throw _privateConstructorUsedError;
  List<PokemonStatsResponse> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeResponse> types,
      PokemonSpriteResponse sprites,
      List<PokemonStatsResponse> stats});

  $PokemonSpriteResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res> implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  final PokemonResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? sprites = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteResponse,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatsResponse>,
    ));
  }

  @override
  $PokemonSpriteResponseCopyWith<$Res> get sprites {
    return $PokemonSpriteResponseCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonResponseCopyWith<$Res> implements $PokemonResponseCopyWith<$Res> {
  factory _$PokemonResponseCopyWith(_PokemonResponse value, $Res Function(_PokemonResponse) then) =
      __$PokemonResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeResponse> types,
      PokemonSpriteResponse sprites,
      List<PokemonStatsResponse> stats});

  @override
  $PokemonSpriteResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class __$PokemonResponseCopyWithImpl<$Res> extends _$PokemonResponseCopyWithImpl<$Res>
    implements _$PokemonResponseCopyWith<$Res> {
  __$PokemonResponseCopyWithImpl(_PokemonResponse _value, $Res Function(_PokemonResponse) _then)
      : super(_value, (v) => _then(v as _PokemonResponse));

  @override
  _PokemonResponse get _value => super._value as _PokemonResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? sprites = freezed,
    Object? stats = freezed,
  }) {
    return _then(_PokemonResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteResponse,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonResponse extends _PokemonResponse {
  _$_PokemonResponse(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.types,
      required this.sprites,
      required this.stats})
      : super._();

  factory _$_PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final List<PokemonTypeResponse> types;
  @override
  final PokemonSpriteResponse sprites;
  @override
  final List<PokemonStatsResponse> stats;

  @override
  String toString() {
    return 'PokemonResponse(id: $id, name: $name, height: $height, weight: $weight, types: $types, sprites: $sprites, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality().equals(other.sprites, sprites) &&
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(sprites),
      const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith =>
      __$PokemonResponseCopyWithImpl<_PokemonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonResponseToJson(this);
  }
}

abstract class _PokemonResponse extends PokemonResponse {
  factory _PokemonResponse(
      {required int id,
      required String name,
      required int height,
      required int weight,
      required List<PokemonTypeResponse> types,
      required PokemonSpriteResponse sprites,
      required List<PokemonStatsResponse> stats}) = _$_PokemonResponse;
  _PokemonResponse._() : super._();

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) = _$_PokemonResponse.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypeResponse> get types;
  @override
  PokemonSpriteResponse get sprites;
  @override
  List<PokemonStatsResponse> get stats;
  @override
  @JsonKey(ignore: true)
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith => throw _privateConstructorUsedError;
}

PokemonTypeResponse _$PokemonTypeResponseFromJson(Map<String, dynamic> json) {
  return _PokemonTypeResponse.fromJson(json);
}

/// @nodoc
class _$PokemonTypeResponseTearOff {
  const _$PokemonTypeResponseTearOff();

  _PokemonTypeResponse call({required int slot, required PokemonTypeDataResponse type}) {
    return _PokemonTypeResponse(
      slot: slot,
      type: type,
    );
  }

  PokemonTypeResponse fromJson(Map<String, Object?> json) {
    return PokemonTypeResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonTypeResponse = _$PokemonTypeResponseTearOff();

/// @nodoc
mixin _$PokemonTypeResponse {
  int get slot => throw _privateConstructorUsedError;
  PokemonTypeDataResponse get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeResponseCopyWith<PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeResponseCopyWith<$Res> {
  factory $PokemonTypeResponseCopyWith(
          PokemonTypeResponse value, $Res Function(PokemonTypeResponse) then) =
      _$PokemonTypeResponseCopyWithImpl<$Res>;
  $Res call({int slot, PokemonTypeDataResponse type});

  $PokemonTypeDataResponseCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeResponseCopyWithImpl<$Res> implements $PokemonTypeResponseCopyWith<$Res> {
  _$PokemonTypeResponseCopyWithImpl(this._value, this._then);

  final PokemonTypeResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeResponse) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDataResponse,
    ));
  }

  @override
  $PokemonTypeDataResponseCopyWith<$Res> get type {
    return $PokemonTypeDataResponseCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonTypeResponseCopyWith<$Res> implements $PokemonTypeResponseCopyWith<$Res> {
  factory _$PokemonTypeResponseCopyWith(
          _PokemonTypeResponse value, $Res Function(_PokemonTypeResponse) then) =
      __$PokemonTypeResponseCopyWithImpl<$Res>;
  @override
  $Res call({int slot, PokemonTypeDataResponse type});

  @override
  $PokemonTypeDataResponseCopyWith<$Res> get type;
}

/// @nodoc
class __$PokemonTypeResponseCopyWithImpl<$Res> extends _$PokemonTypeResponseCopyWithImpl<$Res>
    implements _$PokemonTypeResponseCopyWith<$Res> {
  __$PokemonTypeResponseCopyWithImpl(
      _PokemonTypeResponse _value, $Res Function(_PokemonTypeResponse) _then)
      : super(_value, (v) => _then(v as _PokemonTypeResponse));

  @override
  _PokemonTypeResponse get _value => super._value as _PokemonTypeResponse;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_PokemonTypeResponse(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDataResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeResponse implements _PokemonTypeResponse {
  _$_PokemonTypeResponse({required this.slot, required this.type});

  factory _$_PokemonTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeResponseFromJson(json);

  @override
  final int slot;
  @override
  final PokemonTypeDataResponse type;

  @override
  String toString() {
    return 'PokemonTypeResponse(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonTypeResponse &&
            const DeepCollectionEquality().equals(other.slot, slot) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(slot),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeResponseCopyWith<_PokemonTypeResponse> get copyWith =>
      __$PokemonTypeResponseCopyWithImpl<_PokemonTypeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeResponseToJson(this);
  }
}

abstract class _PokemonTypeResponse implements PokemonTypeResponse {
  factory _PokemonTypeResponse({required int slot, required PokemonTypeDataResponse type}) =
      _$_PokemonTypeResponse;

  factory _PokemonTypeResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeResponse.fromJson;

  @override
  int get slot;
  @override
  PokemonTypeDataResponse get type;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeResponseCopyWith<_PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeDataResponse _$PokemonTypeDataResponseFromJson(Map<String, dynamic> json) {
  return _PokemonTypeDataResponse.fromJson(json);
}

/// @nodoc
class _$PokemonTypeDataResponseTearOff {
  const _$PokemonTypeDataResponseTearOff();

  _PokemonTypeDataResponse call({required String name}) {
    return _PokemonTypeDataResponse(
      name: name,
    );
  }

  PokemonTypeDataResponse fromJson(Map<String, Object?> json) {
    return PokemonTypeDataResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonTypeDataResponse = _$PokemonTypeDataResponseTearOff();

/// @nodoc
mixin _$PokemonTypeDataResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDataResponseCopyWith<PokemonTypeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDataResponseCopyWith<$Res> {
  factory $PokemonTypeDataResponseCopyWith(
          PokemonTypeDataResponse value, $Res Function(PokemonTypeDataResponse) then) =
      _$PokemonTypeDataResponseCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PokemonTypeDataResponseCopyWithImpl<$Res>
    implements $PokemonTypeDataResponseCopyWith<$Res> {
  _$PokemonTypeDataResponseCopyWithImpl(this._value, this._then);

  final PokemonTypeDataResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeDataResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonTypeDataResponseCopyWith<$Res>
    implements $PokemonTypeDataResponseCopyWith<$Res> {
  factory _$PokemonTypeDataResponseCopyWith(
          _PokemonTypeDataResponse value, $Res Function(_PokemonTypeDataResponse) then) =
      __$PokemonTypeDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PokemonTypeDataResponseCopyWithImpl<$Res>
    extends _$PokemonTypeDataResponseCopyWithImpl<$Res>
    implements _$PokemonTypeDataResponseCopyWith<$Res> {
  __$PokemonTypeDataResponseCopyWithImpl(
      _PokemonTypeDataResponse _value, $Res Function(_PokemonTypeDataResponse) _then)
      : super(_value, (v) => _then(v as _PokemonTypeDataResponse));

  @override
  _PokemonTypeDataResponse get _value => super._value as _PokemonTypeDataResponse;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PokemonTypeDataResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeDataResponse implements _PokemonTypeDataResponse {
  _$_PokemonTypeDataResponse({required this.name});

  factory _$_PokemonTypeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeDataResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PokemonTypeDataResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonTypeDataResponse &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeDataResponseCopyWith<_PokemonTypeDataResponse> get copyWith =>
      __$PokemonTypeDataResponseCopyWithImpl<_PokemonTypeDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeDataResponseToJson(this);
  }
}

abstract class _PokemonTypeDataResponse implements PokemonTypeDataResponse {
  factory _PokemonTypeDataResponse({required String name}) = _$_PokemonTypeDataResponse;

  factory _PokemonTypeDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeDataResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeDataResponseCopyWith<_PokemonTypeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpriteResponse _$PokemonSpriteResponseFromJson(Map<String, dynamic> json) {
  return _PokemonSpriteResponse.fromJson(json);
}

/// @nodoc
class _$PokemonSpriteResponseTearOff {
  const _$PokemonSpriteResponseTearOff();

  _PokemonSpriteResponse call({required PokemonSpriteOtherResponse other}) {
    return _PokemonSpriteResponse(
      other: other,
    );
  }

  PokemonSpriteResponse fromJson(Map<String, Object?> json) {
    return PokemonSpriteResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonSpriteResponse = _$PokemonSpriteResponseTearOff();

/// @nodoc
mixin _$PokemonSpriteResponse {
  PokemonSpriteOtherResponse get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpriteResponseCopyWith<PokemonSpriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteResponseCopyWith<$Res> {
  factory $PokemonSpriteResponseCopyWith(
          PokemonSpriteResponse value, $Res Function(PokemonSpriteResponse) then) =
      _$PokemonSpriteResponseCopyWithImpl<$Res>;
  $Res call({PokemonSpriteOtherResponse other});

  $PokemonSpriteOtherResponseCopyWith<$Res> get other;
}

/// @nodoc
class _$PokemonSpriteResponseCopyWithImpl<$Res> implements $PokemonSpriteResponseCopyWith<$Res> {
  _$PokemonSpriteResponseCopyWithImpl(this._value, this._then);

  final PokemonSpriteResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonSpriteResponse) _then;

  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteOtherResponse,
    ));
  }

  @override
  $PokemonSpriteOtherResponseCopyWith<$Res> get other {
    return $PokemonSpriteOtherResponseCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonSpriteResponseCopyWith<$Res>
    implements $PokemonSpriteResponseCopyWith<$Res> {
  factory _$PokemonSpriteResponseCopyWith(
          _PokemonSpriteResponse value, $Res Function(_PokemonSpriteResponse) then) =
      __$PokemonSpriteResponseCopyWithImpl<$Res>;
  @override
  $Res call({PokemonSpriteOtherResponse other});

  @override
  $PokemonSpriteOtherResponseCopyWith<$Res> get other;
}

/// @nodoc
class __$PokemonSpriteResponseCopyWithImpl<$Res> extends _$PokemonSpriteResponseCopyWithImpl<$Res>
    implements _$PokemonSpriteResponseCopyWith<$Res> {
  __$PokemonSpriteResponseCopyWithImpl(
      _PokemonSpriteResponse _value, $Res Function(_PokemonSpriteResponse) _then)
      : super(_value, (v) => _then(v as _PokemonSpriteResponse));

  @override
  _PokemonSpriteResponse get _value => super._value as _PokemonSpriteResponse;

  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_PokemonSpriteResponse(
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteOtherResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpriteResponse implements _PokemonSpriteResponse {
  _$_PokemonSpriteResponse({required this.other});

  factory _$_PokemonSpriteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpriteResponseFromJson(json);

  @override
  final PokemonSpriteOtherResponse other;

  @override
  String toString() {
    return 'PokemonSpriteResponse(other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpriteResponse &&
            const DeepCollectionEquality().equals(other.other, this.other));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(other));

  @JsonKey(ignore: true)
  @override
  _$PokemonSpriteResponseCopyWith<_PokemonSpriteResponse> get copyWith =>
      __$PokemonSpriteResponseCopyWithImpl<_PokemonSpriteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpriteResponseToJson(this);
  }
}

abstract class _PokemonSpriteResponse implements PokemonSpriteResponse {
  factory _PokemonSpriteResponse({required PokemonSpriteOtherResponse other}) =
      _$_PokemonSpriteResponse;

  factory _PokemonSpriteResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpriteResponse.fromJson;

  @override
  PokemonSpriteOtherResponse get other;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpriteResponseCopyWith<_PokemonSpriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpriteOtherResponse _$PokemonSpriteOtherResponseFromJson(Map<String, dynamic> json) {
  return _PokemonSpriteOtherResponse.fromJson(json);
}

/// @nodoc
class _$PokemonSpriteOtherResponseTearOff {
  const _$PokemonSpriteOtherResponseTearOff();

  _PokemonSpriteOtherResponse call(
      {@JsonKey(name: 'official-artwork')
          required PokemonSpriteOfficialArtworkResponse officialArtwork}) {
    return _PokemonSpriteOtherResponse(
      officialArtwork: officialArtwork,
    );
  }

  PokemonSpriteOtherResponse fromJson(Map<String, Object?> json) {
    return PokemonSpriteOtherResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonSpriteOtherResponse = _$PokemonSpriteOtherResponseTearOff();

/// @nodoc
mixin _$PokemonSpriteOtherResponse {
  @JsonKey(name: 'official-artwork')
  PokemonSpriteOfficialArtworkResponse get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpriteOtherResponseCopyWith<PokemonSpriteOtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteOtherResponseCopyWith<$Res> {
  factory $PokemonSpriteOtherResponseCopyWith(
          PokemonSpriteOtherResponse value, $Res Function(PokemonSpriteOtherResponse) then) =
      _$PokemonSpriteOtherResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'official-artwork') PokemonSpriteOfficialArtworkResponse officialArtwork});

  $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$PokemonSpriteOtherResponseCopyWithImpl<$Res>
    implements $PokemonSpriteOtherResponseCopyWith<$Res> {
  _$PokemonSpriteOtherResponseCopyWithImpl(this._value, this._then);

  final PokemonSpriteOtherResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonSpriteOtherResponse) _then;

  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteOfficialArtworkResponse,
    ));
  }

  @override
  $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> get officialArtwork {
    return $PokemonSpriteOfficialArtworkResponseCopyWith<$Res>(_value.officialArtwork, (value) {
      return _then(_value.copyWith(officialArtwork: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonSpriteOtherResponseCopyWith<$Res>
    implements $PokemonSpriteOtherResponseCopyWith<$Res> {
  factory _$PokemonSpriteOtherResponseCopyWith(
          _PokemonSpriteOtherResponse value, $Res Function(_PokemonSpriteOtherResponse) then) =
      __$PokemonSpriteOtherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'official-artwork') PokemonSpriteOfficialArtworkResponse officialArtwork});

  @override
  $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$PokemonSpriteOtherResponseCopyWithImpl<$Res>
    extends _$PokemonSpriteOtherResponseCopyWithImpl<$Res>
    implements _$PokemonSpriteOtherResponseCopyWith<$Res> {
  __$PokemonSpriteOtherResponseCopyWithImpl(
      _PokemonSpriteOtherResponse _value, $Res Function(_PokemonSpriteOtherResponse) _then)
      : super(_value, (v) => _then(v as _PokemonSpriteOtherResponse));

  @override
  _PokemonSpriteOtherResponse get _value => super._value as _PokemonSpriteOtherResponse;

  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_PokemonSpriteOtherResponse(
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteOfficialArtworkResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpriteOtherResponse implements _PokemonSpriteOtherResponse {
  _$_PokemonSpriteOtherResponse({@JsonKey(name: 'official-artwork') required this.officialArtwork});

  factory _$_PokemonSpriteOtherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpriteOtherResponseFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final PokemonSpriteOfficialArtworkResponse officialArtwork;

  @override
  String toString() {
    return 'PokemonSpriteOtherResponse(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpriteOtherResponse &&
            const DeepCollectionEquality().equals(other.officialArtwork, officialArtwork));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(officialArtwork));

  @JsonKey(ignore: true)
  @override
  _$PokemonSpriteOtherResponseCopyWith<_PokemonSpriteOtherResponse> get copyWith =>
      __$PokemonSpriteOtherResponseCopyWithImpl<_PokemonSpriteOtherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpriteOtherResponseToJson(this);
  }
}

abstract class _PokemonSpriteOtherResponse implements PokemonSpriteOtherResponse {
  factory _PokemonSpriteOtherResponse(
          {@JsonKey(name: 'official-artwork')
              required PokemonSpriteOfficialArtworkResponse officialArtwork}) =
      _$_PokemonSpriteOtherResponse;

  factory _PokemonSpriteOtherResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpriteOtherResponse.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  PokemonSpriteOfficialArtworkResponse get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpriteOtherResponseCopyWith<_PokemonSpriteOtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpriteOfficialArtworkResponse _$PokemonSpriteOfficialArtworkResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpriteOfficialArtworkResponse.fromJson(json);
}

/// @nodoc
class _$PokemonSpriteOfficialArtworkResponseTearOff {
  const _$PokemonSpriteOfficialArtworkResponseTearOff();

  _PokemonSpriteOfficialArtworkResponse call(
      {@JsonKey(name: 'front_default') required String frontDefault}) {
    return _PokemonSpriteOfficialArtworkResponse(
      frontDefault: frontDefault,
    );
  }

  PokemonSpriteOfficialArtworkResponse fromJson(Map<String, Object?> json) {
    return PokemonSpriteOfficialArtworkResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonSpriteOfficialArtworkResponse = _$PokemonSpriteOfficialArtworkResponseTearOff();

/// @nodoc
mixin _$PokemonSpriteOfficialArtworkResponse {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpriteOfficialArtworkResponseCopyWith<PokemonSpriteOfficialArtworkResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> {
  factory $PokemonSpriteOfficialArtworkResponseCopyWith(PokemonSpriteOfficialArtworkResponse value,
          $Res Function(PokemonSpriteOfficialArtworkResponse) then) =
      _$PokemonSpriteOfficialArtworkResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$PokemonSpriteOfficialArtworkResponseCopyWithImpl<$Res>
    implements $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> {
  _$PokemonSpriteOfficialArtworkResponseCopyWithImpl(this._value, this._then);

  final PokemonSpriteOfficialArtworkResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonSpriteOfficialArtworkResponse) _then;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonSpriteOfficialArtworkResponseCopyWith<$Res>
    implements $PokemonSpriteOfficialArtworkResponseCopyWith<$Res> {
  factory _$PokemonSpriteOfficialArtworkResponseCopyWith(
          _PokemonSpriteOfficialArtworkResponse value,
          $Res Function(_PokemonSpriteOfficialArtworkResponse) then) =
      __$PokemonSpriteOfficialArtworkResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$PokemonSpriteOfficialArtworkResponseCopyWithImpl<$Res>
    extends _$PokemonSpriteOfficialArtworkResponseCopyWithImpl<$Res>
    implements _$PokemonSpriteOfficialArtworkResponseCopyWith<$Res> {
  __$PokemonSpriteOfficialArtworkResponseCopyWithImpl(_PokemonSpriteOfficialArtworkResponse _value,
      $Res Function(_PokemonSpriteOfficialArtworkResponse) _then)
      : super(_value, (v) => _then(v as _PokemonSpriteOfficialArtworkResponse));

  @override
  _PokemonSpriteOfficialArtworkResponse get _value =>
      super._value as _PokemonSpriteOfficialArtworkResponse;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_PokemonSpriteOfficialArtworkResponse(
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpriteOfficialArtworkResponse implements _PokemonSpriteOfficialArtworkResponse {
  _$_PokemonSpriteOfficialArtworkResponse(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$_PokemonSpriteOfficialArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpriteOfficialArtworkResponseFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'PokemonSpriteOfficialArtworkResponse(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpriteOfficialArtworkResponse &&
            const DeepCollectionEquality().equals(other.frontDefault, frontDefault));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(frontDefault));

  @JsonKey(ignore: true)
  @override
  _$PokemonSpriteOfficialArtworkResponseCopyWith<_PokemonSpriteOfficialArtworkResponse>
      get copyWith => __$PokemonSpriteOfficialArtworkResponseCopyWithImpl<
          _PokemonSpriteOfficialArtworkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpriteOfficialArtworkResponseToJson(this);
  }
}

abstract class _PokemonSpriteOfficialArtworkResponse
    implements PokemonSpriteOfficialArtworkResponse {
  factory _PokemonSpriteOfficialArtworkResponse(
          {@JsonKey(name: 'front_default') required String frontDefault}) =
      _$_PokemonSpriteOfficialArtworkResponse;

  factory _PokemonSpriteOfficialArtworkResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpriteOfficialArtworkResponse.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpriteOfficialArtworkResponseCopyWith<_PokemonSpriteOfficialArtworkResponse>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonStatsResponse _$PokemonStatsResponseFromJson(Map<String, dynamic> json) {
  return _PokemonStatsResponse.fromJson(json);
}

/// @nodoc
class _$PokemonStatsResponseTearOff {
  const _$PokemonStatsResponseTearOff();

  _PokemonStatsResponse call(
      {@JsonKey(name: 'base_stat') required int value, required PokemonStatResponse stat}) {
    return _PokemonStatsResponse(
      value: value,
      stat: stat,
    );
  }

  PokemonStatsResponse fromJson(Map<String, Object?> json) {
    return PokemonStatsResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonStatsResponse = _$PokemonStatsResponseTearOff();

/// @nodoc
mixin _$PokemonStatsResponse {
  @JsonKey(name: 'base_stat')
  int get value => throw _privateConstructorUsedError;
  PokemonStatResponse get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatsResponseCopyWith<PokemonStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatsResponseCopyWith<$Res> {
  factory $PokemonStatsResponseCopyWith(
          PokemonStatsResponse value, $Res Function(PokemonStatsResponse) then) =
      _$PokemonStatsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'base_stat') int value, PokemonStatResponse stat});

  $PokemonStatResponseCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatsResponseCopyWithImpl<$Res> implements $PokemonStatsResponseCopyWith<$Res> {
  _$PokemonStatsResponseCopyWithImpl(this._value, this._then);

  final PokemonStatsResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonStatsResponse) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? stat = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatResponse,
    ));
  }

  @override
  $PokemonStatResponseCopyWith<$Res> get stat {
    return $PokemonStatResponseCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonStatsResponseCopyWith<$Res> implements $PokemonStatsResponseCopyWith<$Res> {
  factory _$PokemonStatsResponseCopyWith(
          _PokemonStatsResponse value, $Res Function(_PokemonStatsResponse) then) =
      __$PokemonStatsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'base_stat') int value, PokemonStatResponse stat});

  @override
  $PokemonStatResponseCopyWith<$Res> get stat;
}

/// @nodoc
class __$PokemonStatsResponseCopyWithImpl<$Res> extends _$PokemonStatsResponseCopyWithImpl<$Res>
    implements _$PokemonStatsResponseCopyWith<$Res> {
  __$PokemonStatsResponseCopyWithImpl(
      _PokemonStatsResponse _value, $Res Function(_PokemonStatsResponse) _then)
      : super(_value, (v) => _then(v as _PokemonStatsResponse));

  @override
  _PokemonStatsResponse get _value => super._value as _PokemonStatsResponse;

  @override
  $Res call({
    Object? value = freezed,
    Object? stat = freezed,
  }) {
    return _then(_PokemonStatsResponse(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonStatsResponse implements _PokemonStatsResponse {
  _$_PokemonStatsResponse({@JsonKey(name: 'base_stat') required this.value, required this.stat});

  factory _$_PokemonStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonStatsResponseFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int value;
  @override
  final PokemonStatResponse stat;

  @override
  String toString() {
    return 'PokemonStatsResponse(value: $value, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonStatsResponse &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.stat, stat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(stat));

  @JsonKey(ignore: true)
  @override
  _$PokemonStatsResponseCopyWith<_PokemonStatsResponse> get copyWith =>
      __$PokemonStatsResponseCopyWithImpl<_PokemonStatsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonStatsResponseToJson(this);
  }
}

abstract class _PokemonStatsResponse implements PokemonStatsResponse {
  factory _PokemonStatsResponse(
      {@JsonKey(name: 'base_stat') required int value,
      required PokemonStatResponse stat}) = _$_PokemonStatsResponse;

  factory _PokemonStatsResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonStatsResponse.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get value;
  @override
  PokemonStatResponse get stat;
  @override
  @JsonKey(ignore: true)
  _$PokemonStatsResponseCopyWith<_PokemonStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStatResponse _$PokemonStatResponseFromJson(Map<String, dynamic> json) {
  return _PokemonStatResponse.fromJson(json);
}

/// @nodoc
class _$PokemonStatResponseTearOff {
  const _$PokemonStatResponseTearOff();

  _PokemonStatResponse call({required String name}) {
    return _PokemonStatResponse(
      name: name,
    );
  }

  PokemonStatResponse fromJson(Map<String, Object?> json) {
    return PokemonStatResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonStatResponse = _$PokemonStatResponseTearOff();

/// @nodoc
mixin _$PokemonStatResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatResponseCopyWith<PokemonStatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatResponseCopyWith<$Res> {
  factory $PokemonStatResponseCopyWith(
          PokemonStatResponse value, $Res Function(PokemonStatResponse) then) =
      _$PokemonStatResponseCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PokemonStatResponseCopyWithImpl<$Res> implements $PokemonStatResponseCopyWith<$Res> {
  _$PokemonStatResponseCopyWithImpl(this._value, this._then);

  final PokemonStatResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonStatResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonStatResponseCopyWith<$Res> implements $PokemonStatResponseCopyWith<$Res> {
  factory _$PokemonStatResponseCopyWith(
          _PokemonStatResponse value, $Res Function(_PokemonStatResponse) then) =
      __$PokemonStatResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PokemonStatResponseCopyWithImpl<$Res> extends _$PokemonStatResponseCopyWithImpl<$Res>
    implements _$PokemonStatResponseCopyWith<$Res> {
  __$PokemonStatResponseCopyWithImpl(
      _PokemonStatResponse _value, $Res Function(_PokemonStatResponse) _then)
      : super(_value, (v) => _then(v as _PokemonStatResponse));

  @override
  _PokemonStatResponse get _value => super._value as _PokemonStatResponse;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PokemonStatResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonStatResponse implements _PokemonStatResponse {
  _$_PokemonStatResponse({required this.name});

  factory _$_PokemonStatResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonStatResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PokemonStatResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonStatResponse &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PokemonStatResponseCopyWith<_PokemonStatResponse> get copyWith =>
      __$PokemonStatResponseCopyWithImpl<_PokemonStatResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonStatResponseToJson(this);
  }
}

abstract class _PokemonStatResponse implements PokemonStatResponse {
  factory _PokemonStatResponse({required String name}) = _$_PokemonStatResponse;

  factory _PokemonStatResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonStatResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PokemonStatResponseCopyWith<_PokemonStatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
