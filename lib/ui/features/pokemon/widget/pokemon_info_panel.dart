import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';

class PokemonInfoPanel extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonInfoPanel({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 16),
          _InfoPanelCell(
            title: S.of(context).height,
            subtitle: '${pokemon.height}',
          ),
          const SizedBox(width: 48),
          _InfoPanelCell(
            title: S.of(context).weight,
            subtitle: '${pokemon.weight}',
          ),
          const SizedBox(width: 48),
          _InfoPanelCell(
            title: S.of(context).bmi,
            subtitle: (pokemon.weight / (pokemon.height * pokemon.height)).toStringAsFixed(2),
          ),
        ],
      ),
    );
  }
}

class _InfoPanelCell extends StatelessWidget {
  final String title;
  final String subtitle;

  const _InfoPanelCell({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyles.medium12.copyWith(color: PokeColors.grey),
        ),
        Text(
          subtitle,
          style: TextStyles.regular14,
        ),
      ],
    );
  }
}
