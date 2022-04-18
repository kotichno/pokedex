// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokedex_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokedexEventTearOff {
  const _$PokedexEventTearOff();

  _LoadPokedex loadPokedex({required int page}) {
    return _LoadPokedex(
      page: page,
    );
  }
}

/// @nodoc
const $PokedexEvent = _$PokedexEventTearOff();

/// @nodoc
mixin _$PokedexEvent {
  int get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPokedex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPokedex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPokedex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPokedex value) loadPokedex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadPokedex value)? loadPokedex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokedex value)? loadPokedex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokedexEventCopyWith<PokedexEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexEventCopyWith<$Res> {
  factory $PokedexEventCopyWith(PokedexEvent value, $Res Function(PokedexEvent) then) =
      _$PokedexEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$PokedexEventCopyWithImpl<$Res> implements $PokedexEventCopyWith<$Res> {
  _$PokedexEventCopyWithImpl(this._value, this._then);

  final PokedexEvent _value;
  // ignore: unused_field
  final $Res Function(PokedexEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LoadPokedexCopyWith<$Res> implements $PokedexEventCopyWith<$Res> {
  factory _$LoadPokedexCopyWith(_LoadPokedex value, $Res Function(_LoadPokedex) then) =
      __$LoadPokedexCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class __$LoadPokedexCopyWithImpl<$Res> extends _$PokedexEventCopyWithImpl<$Res>
    implements _$LoadPokedexCopyWith<$Res> {
  __$LoadPokedexCopyWithImpl(_LoadPokedex _value, $Res Function(_LoadPokedex) _then)
      : super(_value, (v) => _then(v as _LoadPokedex));

  @override
  _LoadPokedex get _value => super._value as _LoadPokedex;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_LoadPokedex(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadPokedex implements _LoadPokedex {
  const _$_LoadPokedex({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'PokedexEvent.loadPokedex(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadPokedex &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$LoadPokedexCopyWith<_LoadPokedex> get copyWith =>
      __$LoadPokedexCopyWithImpl<_LoadPokedex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadPokedex,
  }) {
    return loadPokedex(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? loadPokedex,
  }) {
    return loadPokedex?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadPokedex,
    required TResult orElse(),
  }) {
    if (loadPokedex != null) {
      return loadPokedex(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPokedex value) loadPokedex,
  }) {
    return loadPokedex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadPokedex value)? loadPokedex,
  }) {
    return loadPokedex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokedex value)? loadPokedex,
    required TResult orElse(),
  }) {
    if (loadPokedex != null) {
      return loadPokedex(this);
    }
    return orElse();
  }
}

abstract class _LoadPokedex implements PokedexEvent {
  const factory _LoadPokedex({required int page}) = _$_LoadPokedex;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$LoadPokedexCopyWith<_LoadPokedex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PokedexStateTearOff {
  const _$PokedexStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Initial initial({required List<Pokemon> pokemons}) {
    return _Initial(
      pokemons: pokemons,
    );
  }

  _PageError pageError({required Exception exception}) {
    return _PageError(
      exception: exception,
    );
  }

  _Error error({required Exception exception}) {
    return _Error(
      exception: exception,
    );
  }
}

/// @nodoc
const $PokedexState = _$PokedexStateTearOff();

/// @nodoc
mixin _$PokedexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) initial,
    required TResult Function(Exception exception) pageError,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_PageError value) pageError,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res> implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  final PokedexState _value;
  // ignore: unused_field
  final $Res Function(PokedexState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PokedexStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'PokedexState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) initial,
    required TResult Function(Exception exception) pageError,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_PageError value) pageError,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PokedexState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PokedexStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(_Initial(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.pokemons}) : super._();

  @override
  final List<Pokemon> pokemons;

  @override
  String toString() {
    return 'PokedexState.initial(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) initial,
    required TResult Function(Exception exception) pageError,
    required TResult Function(Exception exception) error,
  }) {
    return initial(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
  }) {
    return initial?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_PageError value) pageError,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PokedexState {
  const factory _Initial({required List<Pokemon> pokemons}) = _$_Initial;
  const _Initial._() : super._();

  List<Pokemon> get pokemons;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageErrorCopyWith<$Res> {
  factory _$PageErrorCopyWith(_PageError value, $Res Function(_PageError) then) =
      __$PageErrorCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$PageErrorCopyWithImpl<$Res> extends _$PokedexStateCopyWithImpl<$Res>
    implements _$PageErrorCopyWith<$Res> {
  __$PageErrorCopyWithImpl(_PageError _value, $Res Function(_PageError) _then)
      : super(_value, (v) => _then(v as _PageError));

  @override
  _PageError get _value => super._value as _PageError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_PageError(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_PageError extends _PageError {
  const _$_PageError({required this.exception}) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'PokedexState.pageError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageError &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$PageErrorCopyWith<_PageError> get copyWith =>
      __$PageErrorCopyWithImpl<_PageError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) initial,
    required TResult Function(Exception exception) pageError,
    required TResult Function(Exception exception) error,
  }) {
    return pageError(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
  }) {
    return pageError?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (pageError != null) {
      return pageError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_PageError value) pageError,
    required TResult Function(_Error value) error,
  }) {
    return pageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
  }) {
    return pageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (pageError != null) {
      return pageError(this);
    }
    return orElse();
  }
}

abstract class _PageError extends PokedexState {
  const factory _PageError({required Exception exception}) = _$_PageError;
  const _PageError._() : super._();

  Exception get exception;
  @JsonKey(ignore: true)
  _$PageErrorCopyWith<_PageError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) = __$ErrorCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$PokedexStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Error(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.exception}) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'PokedexState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) initial,
    required TResult Function(Exception exception) pageError,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? initial,
    TResult Function(Exception exception)? pageError,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_PageError value) pageError,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_PageError value)? pageError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PokedexState {
  const factory _Error({required Exception exception}) = _$_Error;
  const _Error._() : super._();

  Exception get exception;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
