import 'package:intl/intl.dart';
import 'package:pokedex/utils/string_extension.dart';

class Formats {
  static final _idFormat = NumberFormat('000');

  Formats._();

  static String formatId(int id) => '#${_idFormat.format(id)}';

  static String formatPokemonTypes(List<String> types) {
    return types.map((t) => t.capitalize()).join(', ');
  }
}
