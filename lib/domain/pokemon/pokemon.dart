import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required List<String> types,
    required String img,
    required int height,
    required int weight,
    required Map<String, int> stats,
  }) = _Pokemon;
}
