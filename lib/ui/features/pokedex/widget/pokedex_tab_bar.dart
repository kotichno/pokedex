import 'package:flutter/material.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class PokedexTabBar extends StatelessWidget {
  final TabController controller;
  final ValueChanged<int> onTap;
  final int favouritesCount;

  const PokedexTabBar({
    required this.controller,
    required this.onTap,
    required this.favouritesCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      color: Colors.white,
      child: TabBar(
        controller: controller,
        tabs: [
          Text(
            S.of(context).allPokemon,
            style: controller.index == 0 ? TextStyles.medium16 : TextStyles.regular16,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).favourites,
                style: controller.index == 1 ? TextStyles.medium16 : TextStyles.regular16,
              ),
              if (favouritesCount > 0) ...[
                const SizedBox(width: 4),
                _TabFavouritesIndicator(count: favouritesCount),
              ],
            ],
          ),
        ],
        onTap: onTap,
        indicator: MaterialIndicator(
          color: PokeColors.blue,
        ),
        indicatorWeight: 1,
      ),
    );
  }
}

class _TabFavouritesIndicator extends StatelessWidget {
  final int count;
  const _TabFavouritesIndicator({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 20,
        minHeight: 20,
        maxHeight: 20,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: PokeColors.blue,
        ),
        padding: const EdgeInsets.fromLTRB(6, 0, 6, 2),
        child: Center(
          child: Text(
            '$count',
            style: TextStyles.regular12.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
