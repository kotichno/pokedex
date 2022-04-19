import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:pokedex/utils/formats.dart';

class PokemonStatsWidget extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonStatsWidget({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Text(
              S.of(context).statsTitle,
              style: TextStyles.bold16,
            ),
          ),
          Container(
            height: 1,
            color: PokeColors.background,
          ),
          ...pokemon.stats.entries.map((entry) {
            return _StatWidget(
              title: entry.key,
              value: entry.value,
              topPadding: pokemon.stats.entries.first.key == entry.key ? 16 : 24,
            );
          }),
          _StatWidget(
            title: S.of(context).averagePower,
            value: pokemon.stats.values.reduce((value, element) => value + element) ~/ 6,
            topPadding: 24,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _StatWidget extends StatelessWidget {
  final String title;
  final int value;
  final double topPadding;

  const _StatWidget({
    required this.title,
    required this.value,
    required this.topPadding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, topPadding, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Formats.formatStatTitle(title),
                style: TextStyles.regular14.copyWith(color: PokeColors.grey),
              ),
              const SizedBox(width: 8),
              Text('$value', style: TextStyles.medium14),
            ],
          ),
          const SizedBox(height: 8),
          _StatIndicator(value: value),
        ],
      ),
    );
  }
}

class _StatIndicator extends StatelessWidget {
  final int value;

  const _StatIndicator({
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color;

    if (value <= 30) {
      color = PokeColors.red;
    } else if (value <= 70) {
      color = PokeColors.yellow;
    } else {
      color = PokeColors.green;
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 4,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            color: PokeColors.background,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: constraints.maxWidth * value / 100,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
      },
    );
  }
}
