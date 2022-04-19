import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/screens/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:pokedex/utils/formats.dart';
import 'package:pokedex/utils/string_extension.dart';

const _maxAppBarHeight = 244.0;
const _minAppBarHeight = 44.0;

class PokemonScreen extends StatelessWidget {
  final Pokemon pokemon;
  final Color? color;

  const PokemonScreen({
    required this.pokemon,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SafeArea(
        left: false,
        right: false,
        child: Scaffold(
          floatingActionButton: _Fab(pokemon: pokemon),
          body: CustomScrollView(
            slivers: [
              _AppBar(pokemon: pokemon, color: color),
              SliverList(
                delegate: SliverChildListDelegate([
                  _InfoPanel(pokemon: pokemon),
                  const SizedBox(height: 8),
                  _Stats(pokemon: pokemon),
                  const SizedBox(height: 20),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  final Pokemon pokemon;
  final Color? color;

  const _AppBar({
    required this.pokemon,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: _minAppBarHeight,
      expandedHeight: _maxAppBarHeight,
      pinned: true,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final percent = _calculateHeightPercent(constraints);

          return Container(
            color: color,
            child: Stack(
              children: [
                Positioned(
                  left: 16 + (72 - 16) * (1 - percent),
                  top: 8 + (68 - 8) * percent,
                  child: Text(
                    pokemon.name.capitalize(),
                    style: TextStyles.bold32.copyWith(fontSize: 20 + (32 - 20) * percent),
                  ),
                ),
                Positioned(
                  left: 16 + (56 - 16) * (1 - percent),
                  top: 44 + (112 - 44) * percent,
                  child: Opacity(
                    opacity: _multiplyHeightPercent(percent, 2),
                    child: Text(
                      Formats.formatPokemonTypes(pokemon.types),
                      style: TextStyles.regular16,
                    ),
                  ),
                ),
                Positioned(
                  left: 16 + (56 - 16) * (1 - percent),
                  bottom: 14,
                  child: Opacity(
                    opacity: _multiplyHeightPercent(percent, 2),
                    child: Text(
                      Formats.formatId(pokemon.id),
                      style: TextStyles.regular16,
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 0,
                  child: Opacity(
                    opacity: _multiplyHeightPercent(percent, 2),
                    child: SizedBox(
                      width: 136,
                      height: 125,
                      child: Hero(
                        tag: pokemon.name,
                        child: CachedNetworkImage(imageUrl: pokemon.img),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  double _calculateHeightPercent(BoxConstraints constraints) {
    final percent =
        (constraints.maxHeight - _minAppBarHeight) / (_maxAppBarHeight - _minAppBarHeight);

    if (percent < 0) {
      return 0;
    } else if (percent > 1) {
      return 1;
    } else {
      return percent;
    }
  }

  double _multiplyHeightPercent(double percent, int num) {
    final result = percent - (1 - percent) / num;

    if (result < 0) {
      return 0;
    } else if (result > 1) {
      return 1;
    } else {
      return result;
    }
  }
}

class _InfoPanel extends StatelessWidget {
  final Pokemon pokemon;

  const _InfoPanel({
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

class _Stats extends StatelessWidget {
  final Pokemon pokemon;

  const _Stats({
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

class _Fab extends StatelessWidget {
  final Pokemon pokemon;

  const _Fab({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        final isFavourite = state.ids.contains(pokemon.id);

        return FloatingActionButton.extended(
          backgroundColor: isFavourite ? PokeColors.whiteBlue : PokeColors.blue,
          onPressed: () {
            if (isFavourite) {
              context.read<FavouritesBloc>().add(FavouritesEvent.removeFavourite(pokemon));
            } else {
              context.read<FavouritesBloc>().add(FavouritesEvent.addFavourite(pokemon));
            }
          },
          label: Text(
            isFavourite ? S.of(context).removeFavourite : S.of(context).addFavourite,
            style: TextStyles.bold14.copyWith(color: isFavourite ? PokeColors.blue : Colors.white),
          ),
        );
      },
    );
  }
}
