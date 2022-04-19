import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:pokedex/utils/formats.dart';
import 'package:pokedex/utils/string_extension.dart';
import 'package:pokedex/utils/utils.dart';

const _maxAppBarHeight = 244.0;
const _minAppBarHeight = 44.0;

class PokemonAppBar extends StatelessWidget {
  final Pokemon pokemon;
  final Color? color;

  const PokemonAppBar({
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
                        child: Utils.isTestEnvironment
                            ? Container(color: Colors.red)
                            : CachedNetworkImage(imageUrl: pokemon.img),
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
