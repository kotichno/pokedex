// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouritesEventTearOff {
  const _$FavouritesEventTearOff();

  _GetFavouritePokemons getFavouritePokemons() {
    return const _GetFavouritePokemons();
  }

  _AddFavourite addFavourite(Pokemon pokemon) {
    return _AddFavourite(
      pokemon,
    );
  }

  _RemoveFavourite removeFavourite(Pokemon pokemon) {
    return _RemoveFavourite(
      pokemon,
    );
  }
}

/// @nodoc
const $FavouritesEvent = _$FavouritesEventTearOff();

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouritePokemons,
    required TResult Function(Pokemon pokemon) addFavourite,
    required TResult Function(Pokemon pokemon) removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavouritePokemons value) getFavouritePokemons,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res> implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  final FavouritesEvent _value;
  // ignore: unused_field
  final $Res Function(FavouritesEvent) _then;
}

/// @nodoc
abstract class _$GetFavouritePokemonsCopyWith<$Res> {
  factory _$GetFavouritePokemonsCopyWith(
          _GetFavouritePokemons value, $Res Function(_GetFavouritePokemons) then) =
      __$GetFavouritePokemonsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFavouritePokemonsCopyWithImpl<$Res> extends _$FavouritesEventCopyWithImpl<$Res>
    implements _$GetFavouritePokemonsCopyWith<$Res> {
  __$GetFavouritePokemonsCopyWithImpl(
      _GetFavouritePokemons _value, $Res Function(_GetFavouritePokemons) _then)
      : super(_value, (v) => _then(v as _GetFavouritePokemons));

  @override
  _GetFavouritePokemons get _value => super._value as _GetFavouritePokemons;
}

/// @nodoc

class _$_GetFavouritePokemons implements _GetFavouritePokemons {
  const _$_GetFavouritePokemons();

  @override
  String toString() {
    return 'FavouritesEvent.getFavouritePokemons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetFavouritePokemons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouritePokemons,
    required TResult Function(Pokemon pokemon) addFavourite,
    required TResult Function(Pokemon pokemon) removeFavourite,
  }) {
    return getFavouritePokemons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
  }) {
    return getFavouritePokemons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
    required TResult orElse(),
  }) {
    if (getFavouritePokemons != null) {
      return getFavouritePokemons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavouritePokemons value) getFavouritePokemons,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return getFavouritePokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return getFavouritePokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (getFavouritePokemons != null) {
      return getFavouritePokemons(this);
    }
    return orElse();
  }
}

abstract class _GetFavouritePokemons implements FavouritesEvent {
  const factory _GetFavouritePokemons() = _$_GetFavouritePokemons;
}

/// @nodoc
abstract class _$AddFavouriteCopyWith<$Res> {
  factory _$AddFavouriteCopyWith(_AddFavourite value, $Res Function(_AddFavourite) then) =
      __$AddFavouriteCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$AddFavouriteCopyWithImpl<$Res> extends _$FavouritesEventCopyWithImpl<$Res>
    implements _$AddFavouriteCopyWith<$Res> {
  __$AddFavouriteCopyWithImpl(_AddFavourite _value, $Res Function(_AddFavourite) _then)
      : super(_value, (v) => _then(v as _AddFavourite));

  @override
  _AddFavourite get _value => super._value as _AddFavourite;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(_AddFavourite(
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }

  @override
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc

class _$_AddFavourite implements _AddFavourite {
  const _$_AddFavourite(this.pokemon);

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'FavouritesEvent.addFavourite(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFavourite &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemon));

  @JsonKey(ignore: true)
  @override
  _$AddFavouriteCopyWith<_AddFavourite> get copyWith =>
      __$AddFavouriteCopyWithImpl<_AddFavourite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouritePokemons,
    required TResult Function(Pokemon pokemon) addFavourite,
    required TResult Function(Pokemon pokemon) removeFavourite,
  }) {
    return addFavourite(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
  }) {
    return addFavourite?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
    required TResult orElse(),
  }) {
    if (addFavourite != null) {
      return addFavourite(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavouritePokemons value) getFavouritePokemons,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return addFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return addFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (addFavourite != null) {
      return addFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddFavourite implements FavouritesEvent {
  const factory _AddFavourite(Pokemon pokemon) = _$_AddFavourite;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  _$AddFavouriteCopyWith<_AddFavourite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveFavouriteCopyWith<$Res> {
  factory _$RemoveFavouriteCopyWith(_RemoveFavourite value, $Res Function(_RemoveFavourite) then) =
      __$RemoveFavouriteCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$RemoveFavouriteCopyWithImpl<$Res> extends _$FavouritesEventCopyWithImpl<$Res>
    implements _$RemoveFavouriteCopyWith<$Res> {
  __$RemoveFavouriteCopyWithImpl(_RemoveFavourite _value, $Res Function(_RemoveFavourite) _then)
      : super(_value, (v) => _then(v as _RemoveFavourite));

  @override
  _RemoveFavourite get _value => super._value as _RemoveFavourite;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(_RemoveFavourite(
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }

  @override
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc

class _$_RemoveFavourite implements _RemoveFavourite {
  const _$_RemoveFavourite(this.pokemon);

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'FavouritesEvent.removeFavourite(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveFavourite &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemon));

  @JsonKey(ignore: true)
  @override
  _$RemoveFavouriteCopyWith<_RemoveFavourite> get copyWith =>
      __$RemoveFavouriteCopyWithImpl<_RemoveFavourite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouritePokemons,
    required TResult Function(Pokemon pokemon) addFavourite,
    required TResult Function(Pokemon pokemon) removeFavourite,
  }) {
    return removeFavourite(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
  }) {
    return removeFavourite?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouritePokemons,
    TResult Function(Pokemon pokemon)? addFavourite,
    TResult Function(Pokemon pokemon)? removeFavourite,
    required TResult orElse(),
  }) {
    if (removeFavourite != null) {
      return removeFavourite(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavouritePokemons value) getFavouritePokemons,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return removeFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return removeFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavouritePokemons value)? getFavouritePokemons,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (removeFavourite != null) {
      return removeFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavourite implements FavouritesEvent {
  const factory _RemoveFavourite(Pokemon pokemon) = _$_RemoveFavourite;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  _$RemoveFavouriteCopyWith<_RemoveFavourite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavouritesStateTearOff {
  const _$FavouritesStateTearOff();

  _Loading loading({required List<int> ids}) {
    return _Loading(
      ids: ids,
    );
  }

  _FavouritePokemons favouritePokemons({required List<Pokemon> pokemons, required List<int> ids}) {
    return _FavouritePokemons(
      pokemons: pokemons,
      ids: ids,
    );
  }

  _Error error({required Exception exception, required List<int> ids}) {
    return _Error(
      exception: exception,
      ids: ids,
    );
  }
}

/// @nodoc
const $FavouritesState = _$FavouritesStateTearOff();

/// @nodoc
mixin _$FavouritesState {
  List<int> get ids => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) loading,
    required TResult Function(List<Pokemon> pokemons, List<int> ids) favouritePokemons,
    required TResult Function(Exception exception, List<int> ids) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FavouritePokemons value) favouritePokemons,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesStateCopyWith<FavouritesState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res>;
  $Res call({List<int> ids});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res> implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  final FavouritesState _value;
  // ignore: unused_field
  final $Res Function(FavouritesState) _then;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_value.copyWith(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<int> ids});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_Loading(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.ids}) : super._();

  @override
  final List<int> ids;

  @override
  String toString() {
    return 'FavouritesState.loading(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(ids));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) loading,
    required TResult Function(List<Pokemon> pokemons, List<int> ids) favouritePokemons,
    required TResult Function(Exception exception, List<int> ids) error,
  }) {
    return loading(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
  }) {
    return loading?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FavouritePokemons value) favouritePokemons,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends FavouritesState {
  const factory _Loading({required List<int> ids}) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavouritePokemonsCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory _$FavouritePokemonsCopyWith(
          _FavouritePokemons value, $Res Function(_FavouritePokemons) then) =
      __$FavouritePokemonsCopyWithImpl<$Res>;
  @override
  $Res call({List<Pokemon> pokemons, List<int> ids});
}

/// @nodoc
class __$FavouritePokemonsCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements _$FavouritePokemonsCopyWith<$Res> {
  __$FavouritePokemonsCopyWithImpl(
      _FavouritePokemons _value, $Res Function(_FavouritePokemons) _then)
      : super(_value, (v) => _then(v as _FavouritePokemons));

  @override
  _FavouritePokemons get _value => super._value as _FavouritePokemons;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? ids = freezed,
  }) {
    return _then(_FavouritePokemons(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_FavouritePokemons extends _FavouritePokemons {
  const _$_FavouritePokemons({required this.pokemons, required this.ids}) : super._();

  @override
  final List<Pokemon> pokemons;
  @override
  final List<int> ids;

  @override
  String toString() {
    return 'FavouritesState.favouritePokemons(pokemons: $pokemons, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouritePokemons &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons) &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons),
      const DeepCollectionEquality().hash(ids));

  @JsonKey(ignore: true)
  @override
  _$FavouritePokemonsCopyWith<_FavouritePokemons> get copyWith =>
      __$FavouritePokemonsCopyWithImpl<_FavouritePokemons>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) loading,
    required TResult Function(List<Pokemon> pokemons, List<int> ids) favouritePokemons,
    required TResult Function(Exception exception, List<int> ids) error,
  }) {
    return favouritePokemons(pokemons, ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
  }) {
    return favouritePokemons?.call(pokemons, ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
    required TResult orElse(),
  }) {
    if (favouritePokemons != null) {
      return favouritePokemons(pokemons, ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FavouritePokemons value) favouritePokemons,
    required TResult Function(_Error value) error,
  }) {
    return favouritePokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
  }) {
    return favouritePokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (favouritePokemons != null) {
      return favouritePokemons(this);
    }
    return orElse();
  }
}

abstract class _FavouritePokemons extends FavouritesState {
  const factory _FavouritePokemons({required List<Pokemon> pokemons, required List<int> ids}) =
      _$_FavouritePokemons;
  const _FavouritePokemons._() : super._();

  List<Pokemon> get pokemons;
  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$FavouritePokemonsCopyWith<_FavouritePokemons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) = __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({Exception exception, List<int> ids});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? exception = freezed,
    Object? ids = freezed,
  }) {
    return _then(_Error(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.exception, required this.ids}) : super._();

  @override
  final Exception exception;
  @override
  final List<int> ids;

  @override
  String toString() {
    return 'FavouritesState.error(exception: $exception, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(ids));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) loading,
    required TResult Function(List<Pokemon> pokemons, List<int> ids) favouritePokemons,
    required TResult Function(Exception exception, List<int> ids) error,
  }) {
    return error(exception, ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
  }) {
    return error?.call(exception, ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? loading,
    TResult Function(List<Pokemon> pokemons, List<int> ids)? favouritePokemons,
    TResult Function(Exception exception, List<int> ids)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FavouritePokemons value) favouritePokemons,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FavouritePokemons value)? favouritePokemons,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends FavouritesState {
  const factory _Error({required Exception exception, required List<int> ids}) = _$_Error;
  const _Error._() : super._();

  Exception get exception;
  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
