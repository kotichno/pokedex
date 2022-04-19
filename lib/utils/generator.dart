import 'package:pokedex/domain/pokemon/pokemon.dart';

class Generator {
  Generator._();

  static Pokemon genPokemon() => const Pokemon(
        id: 1,
        name: 'bulbasaur',
        types: ['grass', 'poison'],
        img:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
        height: 7,
        weight: 69,
        stats: {
          'hp': 45,
          'attack': 49,
          'defense': 49,
          'special-attack': 65,
          'special-defense': 65,
          'speed': 45,
        },
      );
}
