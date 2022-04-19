import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokemon_card.dart';
import 'package:pokedex/utils/const.dart';

class PokedexWidget extends StatelessWidget {
  final PagingController<int, Pokemon> pagingController;
  final Map<Pokemon, Color> colorsCache;

  const PokedexWidget({
    required this.pagingController,
    required this.colorsCache,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedGridView(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<Pokemon>(
        itemBuilder: (_, item, __) {
          return PokemonCard(
            pokemon: item,
            colorsCache: colorsCache,
          );
        },
      ),
      gridDelegate: Const.gridDelegate,
    );
  }
}
