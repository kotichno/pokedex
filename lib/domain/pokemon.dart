// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required List<String> types,
    required String img,
  }) = _Pokemon;
}
