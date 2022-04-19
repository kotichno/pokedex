import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _favouritesKey = 'favourites';

@singleton
class FavouritesStorage {
  final SharedPreferences _sharedPreferences;

  FavouritesStorage(this._sharedPreferences);

  List<int> getFavourites() {
    final ids = _sharedPreferences.getStringList(_favouritesKey);

    if (ids == null) {
      return [];
    } else {
      return ids.map(int.parse).toList();
    }
  }

  Future<void> addFavourites(int id) async {
    final ids = _sharedPreferences.getStringList(_favouritesKey) ?? []
      ..add(id.toString());
    await _sharedPreferences.setStringList(_favouritesKey, ids);
  }

  Future<void> removeFavourites(int id) async {
    final ids = _sharedPreferences.getStringList(_favouritesKey);
    if (ids == null) return;

    ids.remove(id.toString());
    await _sharedPreferences.setStringList(_favouritesKey, ids);
  }
}
